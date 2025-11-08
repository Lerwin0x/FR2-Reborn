#!/usr/bin/env python3
"""Bulk-fix Tiled JSON maps for Solar2D + Ponytiled.

This utility scans a directory, rewrites tileset image paths to a clean
"map/<filename>.png" format, optionally inlines external TSX definitions,
and emits "*_fixed.json" files alongside a reusable loader stub.

Usage
-----
    python fix_tiled_maps.py assets/config/map

The script works completely offline and preserves map structure, layers,
and properties while making the adjustments required by Solar2D.
"""
from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Tuple
import xml.etree.ElementTree as ET

# -----------------------------------------------------------------------------
# Helpers for value conversion and filename sanitation
# -----------------------------------------------------------------------------

INT_FIELDS = {
    "columns", "firstgid", "id", "imageheight", "imagewidth", "margin",
    "spacing", "tilecount", "tileheight", "tilewidth", "width", "height",
    "duration", "gid", "tileid", "frame", "probability", "offsetx",
    "offsety", "gridwidth", "gridheight", "starty", "startx"
}
FLOAT_FIELDS = {"opacity", "rotation", "probability"}
BOOL_STRINGS = {"true": True, "false": False}


def _convert_value(key: str, value: str) -> object:
    """Convert XML attribute strings into typed Python values."""
    if value is None:
        return None
    if not isinstance(value, str):
        return value
    lower = value.strip().lower()
    if lower in BOOL_STRINGS:
        return BOOL_STRINGS[lower]
    try:
        if key in FLOAT_FIELDS:
            return float(value)
        if key in INT_FIELDS and value.strip():
            return int(round(float(value)))
    except ValueError:
        pass
    try:
        if key not in INT_FIELDS and key not in FLOAT_FIELDS:
            if "." in value:
                return float(value)
            return int(value)
    except ValueError:
        return value
    return value


def _attributes_to_dict(elem: ET.Element) -> Dict[str, object]:
    data: Dict[str, object] = {}
    for key, raw in elem.attrib.items():
        data[key] = _convert_value(key, raw)
    return data


def _parse_properties(node: ET.Element) -> List[Dict[str, object]]:
    props: List[Dict[str, object]] = []
    for prop in node.findall("property"):
        entry = _attributes_to_dict(prop)
        if "value" not in entry and prop.text and prop.text.strip():
            entry["value"] = prop.text.strip()
        props.append(entry)
    return props


def _parse_animation(node: ET.Element) -> List[Dict[str, object]]:
    frames: List[Dict[str, object]] = []
    for frame in node.findall("frame"):
        frames.append(_attributes_to_dict(frame))
    return frames


def _parse_points(value: str) -> List[Dict[str, float]]:
    points: List[Dict[str, float]] = []
    for pair in value.strip().split():
        if "," not in pair:
            continue
        x_str, y_str = pair.split(",", 1)
        try:
            x = float(x_str)
            y = float(y_str)
        except ValueError:
            continue
        points.append({"x": x, "y": y})
    return points


def _parse_object(node: ET.Element) -> Dict[str, object]:
    obj = _attributes_to_dict(node)
    properties = node.find("properties")
    if properties is not None:
        obj["properties"] = _parse_properties(properties)
    polygon = node.find("polygon")
    if polygon is not None and polygon.attrib.get("points"):
        obj["polygon"] = _parse_points(polygon.attrib["points"])
    polyline = node.find("polyline")
    if polyline is not None and polyline.attrib.get("points"):
        obj["polyline"] = _parse_points(polyline.attrib["points"])
    text = node.find("text")
    if text is not None:
        text_payload = _attributes_to_dict(text)
        if text.text and text.text.strip():
            text_payload["text"] = text.text
        obj["text"] = text_payload
    image = node.find("image")
    if image is not None:
        image_payload = _attributes_to_dict(image)
        if "source" in image_payload:
            obj["image"] = image_payload
    return obj


def _parse_objectgroup(node: ET.Element) -> Dict[str, object]:
    data = _attributes_to_dict(node)
    objects = [_parse_object(obj) for obj in node.findall("object")]
    if objects:
        data["objects"] = objects
    properties = node.find("properties")
    if properties is not None:
        data["properties"] = _parse_properties(properties)
    return data


def _parse_wangset(node: ET.Element) -> Dict[str, object]:
    data = _attributes_to_dict(node)
    colors = []
    for color in node.findall("wangcolor"):
        entry = _attributes_to_dict(color)
        props = color.find("properties")
        if props is not None:
            entry["properties"] = _parse_properties(props)
        colors.append(entry)
    if colors:
        data["wangcolors"] = colors
    tiles = []
    for tile in node.findall("wangtile"):
        tiles.append(_attributes_to_dict(tile))
    if tiles:
        data["wangtiles"] = tiles
    return data


def _parse_tile(node: ET.Element) -> Dict[str, object]:
    tile = _attributes_to_dict(node)
    properties = node.find("properties")
    if properties is not None:
        tile["properties"] = _parse_properties(properties)
    image = node.find("image")
    if image is not None:
        img_data = _attributes_to_dict(image)
        tile["image"] = img_data
    objectgroup = node.find("objectgroup")
    if objectgroup is not None:
        tile["objectgroup"] = _parse_objectgroup(objectgroup)
    animation = node.find("animation")
    if animation is not None:
        tile["animation"] = _parse_animation(animation)
    terrain = node.find("terrain")
    if terrain is not None:
        tile["terrain"] = _attributes_to_dict(terrain)
    return tile


def parse_tsx(tsx_path: Path) -> Dict[str, object]:
    """Parse an external TSX tileset into a JSON-friendly dictionary."""
    tree = ET.parse(tsx_path)
    root = tree.getroot()
    data = _attributes_to_dict(root)

    image = root.find("image")
    if image is not None:
        image_payload = _attributes_to_dict(image)
        if "source" in image_payload:
            data["image"] = image_payload["source"]
        if "width" in image_payload:
            data["imagewidth"] = image_payload["width"]
        if "height" in image_payload:
            data["imageheight"] = image_payload["height"]
        if "trans" in image_payload:
            data["transparentcolor"] = image_payload["trans"]

    tileoffset = root.find("tileoffset")
    if tileoffset is not None:
        data["tileoffset"] = _attributes_to_dict(tileoffset)

    grid = root.find("grid")
    if grid is not None:
        data["grid"] = _attributes_to_dict(grid)

    properties = root.find("properties")
    if properties is not None:
        props = _parse_properties(properties)
        if props:
            data["properties"] = props

    terrains = root.find("terraintypes")
    if terrains is not None:
        terrain_defs = []
        for terrain in terrains.findall("terrain"):
            entry = _attributes_to_dict(terrain)
            props = terrain.find("properties")
            if props is not None:
                entry["properties"] = _parse_properties(props)
            terrain_defs.append(entry)
        if terrain_defs:
            data["terraintypes"] = terrain_defs

    wangsets = root.find("wangsets")
    if wangsets is not None:
        data["wangsets"] = [_parse_wangset(ws) for ws in wangsets.findall("wangset")]

    tiles = [_parse_tile(tile) for tile in root.findall("tile")]
    if tiles:
        data["tiles"] = tiles

    return data


# -----------------------------------------------------------------------------
# Image path normalization utilities
# -----------------------------------------------------------------------------


def _sanitize_component(name: str) -> str:
    cleaned = []
    for ch in name:
        if ch.isalnum() or ch in {"_", "-"}:
            cleaned.append(ch)
        elif ch in {"/", "\\"}:
            cleaned.append("_")
    sanitized = "".join(cleaned).strip("_")
    return sanitized or "tileset"


@dataclass
class ImageRewriteState:
    mapping: Dict[str, str]
    used_names: Dict[str, str]

    def rewrite(self, raw_path: str, hint: Optional[str] = None) -> str:
        normalized = raw_path.replace("\\", "/")
        key = normalized.lower()
        if key in self.mapping:
            return self.mapping[key]

        base = Path(normalized).name
        candidate = base
        if candidate in self.used_names and self.used_names[candidate] != key:
            parts = [p for p in Path(normalized).parts[:-1] if p not in {"..", "."}]
            for part in reversed(parts):
                candidate = f"{_sanitize_component(part)}_{base}"
                if candidate not in self.used_names:
                    break
            else:
                stem = Path(base).stem
                suffix = Path(base).suffix or ".png"
                idx = 2
                candidate = f"{stem}_{idx}{suffix}"
                while candidate in self.used_names:
                    idx += 1
                    candidate = f"{stem}_{idx}{suffix}"
        self.used_names[candidate] = key
        new_path = f"map/{candidate}"
        self.mapping[key] = new_path
        return new_path


# -----------------------------------------------------------------------------
# Core processing routine
# -----------------------------------------------------------------------------


def process_map(map_path: Path, image_state: ImageRewriteState, output_suffix: str = "_fixed") -> Optional[Path]:
    try:
        data = json.loads(map_path.read_text(encoding="utf-8"))
    except Exception as exc:  # pylint: disable=broad-except
        print(f"[WARN] Skipping {map_path.name}: unable to parse JSON ({exc})")
        return None

    tilesets = data.get("tilesets", [])
    if not isinstance(tilesets, list):
        print(f"[WARN] Skipping {map_path.name}: unexpected tilesets structure")
        return None

    for index, tileset in enumerate(tilesets):
        if not isinstance(tileset, dict):
            continue
        source = tileset.get("source")
        if source:
            tsx_path = (map_path.parent / source).resolve()
            if not tsx_path.exists():
                print(f"[WARN] Tileset source missing: {source} (referenced by {map_path.name})")
            else:
                embedded = parse_tsx(tsx_path)
                firstgid = tileset.get("firstgid")
                tileset.clear()
                tileset.update(embedded)
                if firstgid is not None:
                    tileset["firstgid"] = firstgid

        if "image" in tileset:
            new_path = image_state.rewrite(str(tileset["image"]), tileset.get("name"))
            tileset["image"] = new_path
        # Image collections (per-tile images)
        if "tiles" in tileset and isinstance(tileset["tiles"], list):
            for tile in tileset["tiles"]:
                if isinstance(tile, dict) and "image" in tile:
                    img_entry = tile["image"]
                    if isinstance(img_entry, dict) and "source" in img_entry:
                        img_entry["source"] = image_state.rewrite(str(img_entry["source"]), tileset.get("name"))
                    elif isinstance(img_entry, str):
                        tile["image"] = image_state.rewrite(str(img_entry), tileset.get("name"))

    output_path = map_path.with_name(f"{map_path.stem}{output_suffix}.json")
    output_path.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
    print(f"[OK] Fixed {map_path.name} (found {len(tilesets)} tilesets)")
    return output_path


# -----------------------------------------------------------------------------
# Entry point
# -----------------------------------------------------------------------------

LOADER_TEMPLATE = """local json = require "json"
local ponytiled = require "com.ponywolf.ponytiled"

local function loadMap(name)
    local path = "map/" .. name .. "_fixed.json"
    local fullPath = system.pathForFile(path, system.ResourceDirectory)
    if not fullPath then
        error("Map not found: " .. path)
    end
    local mapData = json.decodeFile(fullPath)
    if not mapData then
        error("Failed to decode map: " .. path)
    end
    local map = ponytiled.new(mapData, "map/")
    map.x = display.contentCenterX - 400
    map.y = display.contentCenterY + 200
    print("Map loaded:", name, map)
    return map
end

return loadMap
"""


def main(argv: Optional[Iterable[str]] = None) -> int:
    parser = argparse.ArgumentParser(description="Fix Tiled JSON maps for Solar2D + Ponytiled")
    parser.add_argument("input_dir", help="Directory containing Tiled JSON maps and tileset assets")
    parser.add_argument(
        "--loader",
        dest="write_loader",
        action="store_true",
        help="Also (re)generate loadMap.lua in the target directory",
    )
    parser.add_argument(
        "--suffix",
        default="_fixed",
        help="Suffix appended to the generated JSON filenames (default: _fixed)",
    )
    args = parser.parse_args(list(argv) if argv is not None else None)

    target_dir = Path(args.input_dir).expanduser().resolve()
    if not target_dir.exists() or not target_dir.is_dir():
        print(f"[ERROR] Input directory not found: {target_dir}")
        return 1

    image_state = ImageRewriteState(mapping={}, used_names={})

    produced = []
    for json_path in sorted(target_dir.glob("*.json")):
        if json_path.stem.endswith(args.suffix):
            continue
        result = process_map(json_path, image_state, output_suffix=args.suffix)
        if result is not None:
            produced.append(result)

    if not produced:
        print("[INFO] No JSON maps processed. Ensure the directory contains Tiled .json files.")

    if args.write_loader:
        loader_path = target_dir / "loadMap.lua"
        loader_path.write_text(LOADER_TEMPLATE, encoding="utf-8")
        print(f"[OK] Wrote loader stub: {loader_path.name}")

    return 0


if __name__ == "__main__":
    sys.exit(main())

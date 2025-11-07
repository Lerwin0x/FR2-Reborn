# Porting Notes

- **Menu presentation**: Composer-powered menu references `assets/images/gui/common/bgMain.png`, `assets/images/gui/common/logo.png`, and `assets/images/gui/mainMenu/buttonPlayX.png`. Layout relies on Solar2D anchors to stay responsive at 1080p.
- **Button widgets**: `ui/widgets.lua` wraps button textures with optional text overlays and press feedback. Legacy sliced scaling is still pending for pixel-perfect UI replication.
- **Race logic**: `game/track.lua` parses `assets/config/map/<id>.json` and builds camera-facing parallax layers from `assets/images/map/forest/background/`. Ground collision uses sampled tile heights; slopes and special tiles still need bespoke handling.
- **Gaps & hazards**: Columns without ground currently inherit the map's base level, keeping the runner on-screen. Pit falls, traps, and respawn rules require additional data from the original scripts.
- **Runner physics**: `game/runner.lua` implements buffered jumps, coyote time, and a local speed-boost power-up. Additional states (slides, traps, projectiles) remain TODO.
- **HUD & controls**: Countdown sprites and on-screen buttons source textures from `assets/images/game/`. Keyboard bindings live in `engine/input.lua`; expand to gamepads once requirements settle.
- **Audio**: `engine/asset.preload()` now loads core SFX (button, countdown, jump, power). Background music and the wider SFX set are not yet wired.
- **Platform glue**: Android-specific resources (e.g., `res/`, `AndroidManifest.xml`) remain in `OriginalSourceCode/` and are outside Solar2D's scope. Keep them for reference if native builds are revisited.

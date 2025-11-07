# FR2-Reborn

FR2-Reborn is a Solar2D reimplementation of Dirtybit's Fun Run 2 using clean Lua 5.1, rewritten from the supplied OriginalSourceCode assets and decompiled behavioral references.

## Requirements

- Solar2D (2024.3697 or newer) installed locally.
- Lua 5.1 interpreter (optional, for running headless tests).

## Getting Started

1. Launch the Solar2D Simulator.
2. Open `FR2-Reborn/main.lua` from this workspace.
3. The app loads into the boot scene, transitions to the menu, and can start a single-device race.

## Running Tests

```sh
lua tests/test_random.lua
```

## System Provenance

| System             | OriginalSourceCode Reference                           | DecompiledLua Reference                    |
| ------------------ | ------------------------------------------------------ | ------------------------------------------ |
| Boot + Menu flow   | `assets/config/config.json`, `assets/images/gui`       | `3.lua`, `images.gui.clan_v2.emblem.*`     |
| Race loop          | `assets/config/bonusRaceConfig.json`, `assets/lua/map` | `lua.game.effects.fireworksHandler.lua`    |
| Runner dynamics    | `assets/config/config.json`                            | `lua.game.powerups.puArmor.lua`            |
| Power-ups registry | `assets/config/storeConfig.json`                       | `lua.game.powerups.powerupsImageSheet.lua` |
| HUD + Results UI   | `assets/images/gui/postgame`                           | `images.gui.postgame.adCoins.adCoins.lua`  |
| Audio stubs        | `assets/sound`                                         | `lua.ads.audioModule.lua`                  |
| Networking stub    | `assets/config/awards.json`                            | `lua.ads.rewardedVideoPoolInfo.lua`        |

## Project Layout

- `main.lua`, `config.lua`, `build.settings`: Solar2D application bootstrap.
- `scenes/`: Composer scenes (`boot`, `menu`, `race`, `results`).
- `engine/`: Core systems (assets, audio, input, physics, time, RNG, net stub).
- `game/`: Gameplay domain modules (constants, runner, track, obstacles, powerups, items, match).
- `ui/`: HUD and widget helpers.
- `assets/`: Copied art/audio/content from OriginalSourceCode/assets.
- `Docs/`: Feature map pointer, assumptions, and porting notes.
- `tests/`: Deterministic logic tests.
- `QA_CHECKLIST.md`: Lightweight testing guide.

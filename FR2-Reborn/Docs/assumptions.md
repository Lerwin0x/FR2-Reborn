# Assumptions

- Solar2D 2024.3697 (or newer) is installed and used to run the simulator.
- Project root is `FR2-Reborn/`; all asset file references are relative to this root (e.g. `assets/images/...`).
- Runtime operates at 60 FPS; physics and timers assume milliseconds supplied by Solar2D's event payloads.
- Default content resolution is 1920x1080; parallax offsets and HUD placements assume a 16:9 aspect ratio.
- Original JSON data and Lua tables under `assets/` remain intact; gameplay parsers consume these without mutation.
- All art/audio assets copied from `OriginalSourceCode/assets` are available under `FR2-Reborn/assets` with identical filenames.
- Deterministic RNG is required for parity testing; reseeding between simulations is the caller's responsibility.
- Networking features are mocked; real online services are out of scope for the current milestone.

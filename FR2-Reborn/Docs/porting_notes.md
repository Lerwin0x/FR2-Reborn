# Porting Notes

- **Menu presentation**: Replaced decompiled UI scripts with a simplified Composer scene that references `assets/images/gui/common/bgMain.png`, `assets/images/gui/mainMenu/buttonFRAlogo.png`, and `assets/images/gui/mainMenu/buttonPlayX.png`. Layout uses Solar2D anchor alignment instead of hard-coded pixel coordinates from the original runtime.
- **Button widgets**: `ui/widgets.lua` now wraps button textures with optional text overlays. Legacy nine-patch scaling is not yet replicated; future work may add sliced scaling using image sheets.
- **Race logic**: Current implementation stubs out physics-based runner motion and collisions. Data adapters should parse `assets/lua/map` content to build full track geometry in later iterations.
- **HUD assets**: HUD presently renders text placeholders; assets under `assets/images/gui/postgame/` and `assets/images/gui/mainMenu/` are documented for future integration.
- **Audio**: Sound manifest is not populated. When wiring effects, use `engine.asset.registerSound` with files from `assets/sound/` and play them via `engine.audio` helpers.
- **Platform glue**: Android-specific resources (e.g., `res/`, `AndroidManifest.xml`) remain in `OriginalSourceCode/` and are outside Solar2D's scope. Keep them for reference if native builds are revisited.

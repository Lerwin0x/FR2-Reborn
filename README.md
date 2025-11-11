#  Fun Run 2: Reborn (Solar2D Edition)

> **A complete, enhanced remake of the classic multiplayer racing game — built from scratch in Solar2D with modern features and polished gameplay.**

##  About the Project

Fun Run 2: Reborn is a fully reimagined version of the beloved multiplayer racing game, rebuilt from the ground up using [Solar2D (formerly Corona SDK)](https://solar2d.com/). This project combines the chaotic fun and competitive spirit of the original with modern enhancements, improved performance, and expanded features.

**Key Goals:**
- Preserve the core gameplay that made Fun Run 2 addictive
- Enhance multiplayer experience with robust networking
- Add modern features like achievement systems and character progression
- Provide a solid foundation for community modding and expansion

---

##  Quick Start

### **Requirements**
- Solar2D SDK (2023.3686 or newer)
- Lua 5.1 compatible environment
- 2GB RAM minimum, 4GB recommended
- OpenGL ES 2.0 support

##  How to Play

### **Basic Controls**
- **Jump:** Tap screen / Spacebar
- **Use Power-up:** Tap power-up button when available

### **Game Modes**
1. **Single Player:** Race against AI opponents
2. **Local Multiplayer:** Connect devices on same network

### **Power-ups**
- **Lightning:** Stun nearby opponents
- **Speed Boost:** Temporary speed increase
- **Shield:** Protect from one attack
- **Magnet:** Attract nearby collectibles

### **Progression**
- Complete races to earn **coins** and **experience**
- Unlock new **characters** with unique abilities
- Purchase **cosmetic items** and **power-up packs**
- Achieve **milestones** for bonus rewards

---

##  Development

### **Architecture Overview**
The game uses a modular architecture with clear separation of concerns:

- **Scene Management:** Composer-based scene transitions
- **Save System:** JSON-based data persistence with validation
- **Network Layer:** Socket-based multiplayer with message queuing
- **Audio System:** Categorized sound management with volume controls
- **Animation System:** Tween-based smooth animations
- **Physics Integration:** Box2D physics with custom helpers

### **Contributing**
We welcome contributions! Please:

1. **Fork the repository**
2. **Create a feature branch:** `git checkout -b feature/new-character`
3. **Make your changes** with proper testing
4. **Follow code style** guidelines
5. **Submit a pull request** with detailed description

### **Code Style**
- Use descriptive variable names
- Comment complex logic
- Follow Lua naming conventions
- Keep functions focused and small
- Handle errors gracefully

---

## 🔧 Built With

- **[Solar2D](https://solar2d.com/)** — Cross-platform 2D game engine
- **[Lua 5.1](https://www.lua.org/)** — Lightweight scripting language
- **[Box2D](https://box2d.org/)** — 2D physics engine (via Solar2D)
- **[Composer](https://docs.coronalabs.com/api/library/composer/)** — Scene management
- **[JSON](https://docs.coronalabs.com/api/library/json/)** — Data serialization
- **[Socket](https://docs.coronalabs.com/plugin/socket/)** — Network communication
- **[ImageMagick](https://imagemagick.org/)** — Placeholder asset generation

---

##  License & Disclaimer

**License:** MIT License - See [LICENSE](LICENSE) for details

**Disclaimer:** This is a **fan-made project** and is **not affiliated with or endorsed by Dirtybit or the original creators of Fun Run**. All original game concepts belong to their respective owners. This project is created for educational purposes and community enjoyment.

**Fair Use:** Original assets are recreated or used under fair use guidelines. If you are a rights holder and have concerns, please contact us for immediate resolution.

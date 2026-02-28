# Under Pressure

A 2D platformer game built in **GameMaker**, set in a mysterious cave. You play as a newcomer entering the territory of a rival race — only to discover that they're not so different from you after all.

---

## Gameplay

- Explore cave environments filled with platforming challenges
- Search for hidden treasure
- Encounter NPCs — some will attack on sight, while others can be spoken to
- Discover the truth: the "enemy" race are good people that the world has misjudged
- Navigate between multiple cave areas using warp zones

---

## Story

Two races have long been at war. You are a newcomer who ventures into the cave of the so-called "offending" race. What you find inside changes everything — they aren't the monsters the world made them out to be.

---

## Controls

| Action       | Key        |
|--------------|------------|
| Move Left    | `A`        |
| Move Right   | `D`        |
| Jump         | `W`        |
| Move Down    | `S`        |
| Pause / Back | `Escape`   |
| Start Game   | `Enter` or `Space` |

> Double jump is supported! Press jump again while airborne to use it.

---

## Features

- **Smooth platformer physics** — apex hang time, variable gravity on ascent/descent, and a capped fall speed
- **Double jump** — configurable number of air jumps
- **Warp system** — seamlessly transition between rooms
- **NPC system** — enemies with a dialogue variant that reveals a deeper story
- **Start screen** with title and prompt

---

## Project Structure

```
CampfirePortlandOregon.yyp   ← GameMaker project file
objects/                      ← Game objects (Player, NPCs, Stone, Warp, etc.)
scripts/                      ← Shared scripts (Controls, Globals)
rooms/                        ← Room files (TestingRoom, Cave2, etc.)
sprites/                      ← Sprite assets
sounds/                       ← Audio assets
fonts/                        ← Font assets
```

---

## Development

This project is built with **GameMaker** (version 2). To open it:

1. Install [GameMaker](https://gamemaker.io/)
2. Clone or download this repository
3. Open `CampfirePortlandOregon.yyp` in GameMaker

### Known Issues
- If GameMaker reports a linking error on load (e.g. `Cannot resolve link ... inst_XXXXXXXX`), an instance was deleted from a room without first removing its placement. Open the referenced `.yy` room file in a text editor, search for the instance ID, and delete that entry.

---

## License

See [LICENSE](LICENSE) for details.

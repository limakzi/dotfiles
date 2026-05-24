---
description: Function design rules from Clean Code covering size, arguments, and command-query separation.
applyTo:
  - "**"
---

# Functions

- Functions should do one thing, do it well, and do it only.
- Keep functions small — ideally fewer than 20 lines.
- Limit function arguments; prefer fewer than three.
- Avoid flag arguments; split into separate functions instead.
- Functions should either do something or answer something, not both (command-query separation).
- Prefer exceptions over returning error codes.

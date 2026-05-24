---
description: Error handling rules from Clean Code covering exceptions, null, and happy-path first.
applyTo:
  - "**"
---

# Error Handling

- Use exceptions rather than return codes.
- Write the happy-path first, then handle edge cases.
- Provide context when throwing exceptions.
- Do not return `null`.
- Do not pass `null`; use empty collections or special-case objects instead.

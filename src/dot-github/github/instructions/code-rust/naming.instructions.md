---
description: Naming conventions for Rust modules, types, functions, variables, and constants.
applyTo:
  - "**/*.rs"
---

# Rust — naming

- Use `snake_case` for functions, methods, variables, modules, and crate names.
- Use `CamelCase` for types (structs, enums, traits, type aliases).
- Use `SCREAMING_SNAKE_CASE` for constants and statics.
- Use `snake_case` for macro names.
- Prefix boolean variables and methods with `is_`, `has_`, or `can_` to signal intent.
- Name trait methods as verbs; name trait types as nouns or adjectives describing capability (e.g., `Display`, `Serialize`, `Iterator`).
- Name lifetime parameters with short, descriptive lowercase labels; prefer `'a`, `'b` only when the meaning is obvious; use descriptive names (e.g., `'buf`, `'conn`) when multiple lifetimes coexist.
- Follow the Rust API Guidelines (https://rust-lang.github.io/api-guidelines/naming.html).

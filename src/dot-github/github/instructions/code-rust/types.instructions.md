---
description: Rules for structs, enums, traits, and generics in Rust.
applyTo:
  - "**/*.rs"
---

# Rust — types

- Use `enum` to model mutually exclusive states; avoid stringly-typed state flags.
- Use the newtype pattern (`struct Meters(f64)`) to prevent mixing semantically different values of the same primitive type.
- Derive standard traits (`Debug`, `Clone`, `PartialEq`, `Eq`, `Hash`) when applicable.
- Implement `Display` for types that have a meaningful human-readable representation.
- Prefer trait objects (`dyn Trait`) only when the set of concrete types is unknown at compile time; otherwise use generics.
- Use `#[non_exhaustive]` on public enums and structs in libraries to allow future additions without breaking changes.
- Bound generics at the function or impl level, not at the struct definition, unless the struct requires the bound to be valid.
- Prefer `impl Trait` in return position to hide concrete types when only one implementation is returned.

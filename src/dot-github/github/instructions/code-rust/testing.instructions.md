---
description: Rules for unit tests, integration tests, and documentation tests in Rust.
applyTo:
  - "**/*.rs"
  - "**/Cargo.toml"
---

# Rust — testing

- Place unit tests in a `#[cfg(test)] mod tests` block at the bottom of the file under test.
- Place integration tests in the `tests/` directory at the crate root.
- Write documentation examples in `///` doc comments; they are compiled and run as tests by `cargo test`.
- Use `assert_eq!` and `assert_ne!` instead of `assert!(a == b)` to get useful failure messages.
- Name test functions descriptively using the pattern `<function>_<scenario>_<expected_outcome>`.
- Use `#[should_panic(expected = "...")]` for tests that assert panics; always include the expected message.
- Prefer `proptest` or `quickcheck` for property-based testing of pure functions with many input combinations.
- Mock external I/O with traits and test doubles rather than spawning real processes or network connections.

---
description: Formatting, linting, and project organization rules for Rust code.
applyTo:
  - "**/*.rs"
  - "**/Cargo.toml"
  - "**/Cargo.lock"
---

# Rust — formatting

- Run `cargo fmt` before every commit; do not override default `rustfmt` settings without a documented reason.
- Run `cargo clippy -- -D warnings` in CI; treat all clippy warnings as errors.
- Keep `Cargo.toml` dependencies sorted alphabetically within each section (`[dependencies]`, `[dev-dependencies]`).
- Pin exact versions in `Cargo.lock` and commit it for binaries; omit it from version control for libraries.
- Keep `main.rs` or `lib.rs` as entry points only; move logic into submodules.
- Use `mod` to keep related types and functions in the same file when the module is small; split into a directory module when it grows beyond one responsibility.
- Group `use` statements: standard library first, then external crates, then local modules — separated by blank lines.

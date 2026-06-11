---
description: Security rules for Rust covering unsafe code, dependencies, and secret handling.
applyTo:
  - "**/*.rs"
  - "**/Cargo.toml"
---

# Rust — security

- Minimize `unsafe` blocks; isolate them behind a safe public API and document the invariants that make them sound.
- Add a `# Safety` section to every `unsafe fn` doc comment explaining required preconditions.
- Run `cargo audit` in CI; fail the pipeline on any RUSTSEC advisory with a severity of HIGH or higher.
- Never hardcode secrets, tokens, or passwords in source files or `Cargo.toml`.
- Source secrets from environment variables or a secrets manager at runtime.
- Add `.env` files to `.gitignore`; never commit them.
- Avoid `transmute`; use safe conversion functions (`From`, `TryFrom`, `bytemuck`) instead.
- Validate all data that crosses a trust boundary (network input, file contents, environment variables) before use.
- Pin dependency versions in `Cargo.lock` for binaries to prevent supply-chain drift.
- When suppressing a `cargo clippy` lint inline, include a comment explaining why and a tracking reference.

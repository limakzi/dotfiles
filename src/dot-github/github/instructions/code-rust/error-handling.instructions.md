---
description: Rules for error handling in Rust using Result, Option, the ? operator, and custom error types.
applyTo:
  - "**/*.rs"
---

# Rust — error handling

- Return `Result<T, E>` from fallible functions; never panic in library code.
- Use the `?` operator to propagate errors instead of explicit `match` or `unwrap`.
- Use `Option<T>` for values that may be absent; avoid `null`-simulating sentinel values.
- Define custom error types with `thiserror` for libraries; use `anyhow` for application error propagation.
- Implement `std::error::Error` for all custom error types.
- Provide context when propagating errors with `anyhow::Context::context` or `wrap_err`.
- Never call `.unwrap()` or `.expect()` in production code paths; reserve them for tests and provably-safe cases.
- When using `.expect()`, write the message as an assertion of what must be true (e.g., `"channel should not be closed"`).
- Distinguish recoverable errors (`Result`) from unrecoverable states (`panic!`) — only panic on programmer errors.

---
description: Rules for ownership, borrowing, and lifetimes in Rust.
applyTo:
  - "**/*.rs"
---

# Rust — ownership

- Prefer borrowing (`&T`, `&mut T`) over cloning or moving when the caller retains ownership.
- Call `.clone()` only when shared ownership or a long-lived copy is genuinely required; add a comment when it is non-obvious.
- Use `Arc<T>` for shared ownership across threads; use `Rc<T>` only in single-threaded contexts.
- Use `Cow<'a, T>` when a function sometimes needs owned data and sometimes can borrow.
- Avoid interior mutability (`RefCell`, `Mutex`) unless required by the design; prefer ownership transfers.
- Keep lifetime annotations minimal — let the compiler infer lifetimes where the elision rules apply.
- Do not fight the borrow checker with unnecessary `clone` calls; restructure the code instead.
- Prefer `&str` over `&String` and `&[T]` over `&Vec<T>` in function signatures to accept wider inputs.

---
applyTo: "**/*.tf"
---

# Terraform — Assertions

- Use `precondition` blocks to enforce assumptions before resource creation.
- Use `postcondition` blocks to enforce guarantees after apply.
- Use `check` blocks (Terraform ≥ 1.5) for health assertions that warn without blocking.
- Use `precondition` or `postcondition` when failures must block the apply.

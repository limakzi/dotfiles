---
description: Formatting rules for Terraform files using terraform fmt, locals, and dynamic blocks.
applyTo:
  - "**/*.tf"
  - "**/*.tfvars"
---

# Terraform — formatting

- Run `terraform fmt` before every commit.
- Use two-space indentation in all `.tf` files.
- Use `terraform fmt` spacing around `=`.
- Do not vertically align attributes.
- Place one resource per file.
- Group resources in a single file only when they share a direct dependency.
- Use `locals` to deduplicate repeated expressions.
- Do not inline logic in resource arguments.
- Extract logic to `locals`.
- Write literal nested blocks wherever possible.
- Use `dynamic` blocks only in reusable module interfaces where the caller controls a variable number of configurations.
- Never nest `dynamic` blocks inside other `dynamic` blocks.

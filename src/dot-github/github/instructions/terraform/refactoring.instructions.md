---
applyTo: "**/*.tf"
---

# Terraform — refactoring

- Use `moved` blocks (Terraform ≥ 1.1) instead of `terraform state mv` for renames and restructuring.
- Use declarative `import` blocks (Terraform ≥ 1.5) instead of `terraform import` CLI commands.
- Retain `moved` blocks until all callers have applied the change.

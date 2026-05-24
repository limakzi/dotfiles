---
applyTo: "**/*.tf"
---

# Terraform — iteration

- Use `for_each` over `count` when instances have stable identifiers.
- Never use `count` on resources where identity must remain stable.
- Use `for_each = toset(var.subnet_ids)` for collections requiring stable identity.

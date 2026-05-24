---
applyTo: "**/*.tf,**/*.tfvars"
---

# Terraform — Formatting

- Run `terraform fmt` before every commit.
- Use two-space indentation in all `.tf` files.
- Use `terraform fmt` standard spacing around `=`; do not manually vertically align attributes.
- Enforce `terraform fmt -check -recursive` as a CI gate.
- Place one resource per file.
- Group resources in a single file only when they share a direct dependency.
- Use `locals` to deduplicate repeated expressions.
- Do not inline logic in resource arguments; extract to `locals`.
- Place the `terraform {}` block in `versions.tf`.
- Place provider configuration in `providers.tf`.
- Place variables in `variables.tf`.
- Place outputs in `outputs.tf`.
- Place primary resources in `main.tf`.
- Place data sources in the same file as the resource that consumes them.
- Write literal nested blocks wherever possible.
- Use `dynamic` blocks only in reusable module interfaces where the caller controls a variable number of configurations.
- Never nest `dynamic` blocks inside other `dynamic` blocks.

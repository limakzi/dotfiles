---
description: Rules for declaring Terraform variables with types, defaults, validation, and sensitivity.
applyTo:
  - "**/*.tf"
  - "**/*.tfvars"
---

# Terraform — variables

- Include `description` and `type` in every `variable` block.
- Set `default` only when all callers share the same fallback value.
- Do not hardcode sensitive values.
- Mark sensitive inputs with `sensitive = true`.
- Source sensitive values from environment variables or a secrets manager.
- Define all variables in `variables.tf`.
- Add `validation` blocks when the type constraint is insufficient (e.g., string patterns, numeric ranges, enum-like values).
- Write `error_message` text from the caller's perspective.
- State the valid format in `error_message`.
- Use `nullable = false` on variables that must not be null.
- In Terraform ≥ 1.10, add `ephemeral = true` alongside `sensitive = true` on short-lived secret variables.
- Never set `default` on password, token, or private key variables.

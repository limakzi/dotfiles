---
applyTo: "**/*.tf"
---

# Terraform — outputs

- Include `description` in every `output` block.
- Mark outputs that expose sensitive data with `sensitive = true`.
- Define all outputs in `outputs.tf`.
- Add `precondition` blocks on outputs to validate module guarantees.
- In Terraform ≥ 1.10, add `ephemeral = true` to outputs for short-lived secrets.
- Never expose credentials or connection strings in outputs without `sensitive = true`.
- Document that `terraform output -json` bypasses redaction.

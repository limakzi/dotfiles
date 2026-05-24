---
applyTo: "**/*.tf"
---

# Terraform — tagging

- Tag all resources with `Name`, `environment`, and `managed_by = "terraform"`.
- Define a `local.common_tags` map.
- Merge `local.common_tags` into each resource's `tags` argument.
- Include a `cost_center` tag on all resources.
- Include a `created_by` or `owner` tag on all resources.
- Use `merge(local.common_tags, { Name = "..." })` per resource.
- Enforce required tags via `validation` blocks on the `tags` variable.
- Enforce required tags via Sentinel or OPA policy when using HCP Terraform.

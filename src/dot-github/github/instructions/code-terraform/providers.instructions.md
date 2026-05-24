---
applyTo:
  - "**/*.tf"
---

# Terraform — providers

- In root directories, pin provider versions in `required_providers` using `~>`.
- Pin the Terraform CLI version in `required_version` using `~>`.
- Define all provider configuration in `providers.tf`.
- Place the `terraform {}` block in `versions.tf`.
- Commit `.terraform.lock.hcl` to version control.
- Never hardcode credentials in provider blocks.
- Source provider credentials from environment variables, instance profiles, workload identity, or a secrets manager.
- Never define `provider` blocks inside child modules.
- In reusable modules, set only a minimum `>=` version constraint on providers.
- Never set an upper bound on provider versions in reusable modules.
- Pass non-default provider configurations to child modules using the `providers` map argument.

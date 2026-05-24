---
description: Naming conventions for Terraform resources, variables, outputs, locals, and modules.
applyTo:
  - "**/*.tf"
  - "**/*.tfvars"
---

# Terraform — naming

- Use `snake_case` for all resource, variable, output, local, and module names.
- Name resources as `this`, by default.
- Name resources to describe their purpose, not their type (e.g., `web_server`, not `aws_instance`).
- Avoid type prefixes in variable names (e.g., use `var.region`, not `var.variable_region`).
- Name a resource `this` when a module creates exactly one resource of a given type.
- Follow the `terraform-<PROVIDER>-<NAME>` convention for registry module repositories.
- Rename or dissolve a module whose name duplicates its primary resource type.

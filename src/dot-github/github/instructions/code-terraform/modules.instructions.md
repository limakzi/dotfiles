---
applyTo: "**/*.tf"
---

# Terraform — modules

- Include `main.tf`, `variables.tf`, `outputs.tf`, and `versions.tf` in every module.
- Create all required files even if initially empty.
- Include a `README.md` in every module.
- Add `<!-- BEGIN_TF_DOCS -->` and `<!-- END_TF_DOCS -->` sentinel comments to `README.md`.
- Place examples under an `examples/` directory.
- Give each example its own `README.md`.
- Reference the module in examples by its registry address, not a relative path.
- Create a module only when it composes multiple resource types into a concept.
- Do not write modules that wrap a single resource type.
- Keep the module tree to one level of nesting.
- Accept dependencies (e.g., VPC IDs, subnet IDs) as input variables.
- Pin registry modules with `~>` (e.g., `version = "~> 5.0"`).
- Pin git-sourced modules to a tag or commit SHA (e.g., `?ref=v1.2.0`).
- Automate `README.md` updates with `terraform-docs` in CI.

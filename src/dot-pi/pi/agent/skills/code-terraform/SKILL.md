---
name: code-terraform
description: Comprehensive Terraform guidelines and best practices covering naming, formatting, modules, variables, outputs, providers, resources, data sources, remote state, security, tagging, and testing. Use when writing, reviewing, or refactoring Terraform code, HCL files (.tf, .tfvars, .hcl), and infrastructure configurations.
metadata:
  version: "0.1.0"
  category: "infrastructure"
  author: "Kamil Zabielski"
---

# Terraform Guidelines

This skill provides modular reference guidelines for Terraform development. See the reference files below for detailed rules:

- [Naming](references/naming.md) — Naming conventions for resources, variables, outputs, and modules.
- [Formatting](references/formatting.md) — Code formatting, indentation, locals, and dynamic blocks.
- [Modules](references/modules.md) — Module structure, composition, pinning, and documentation.
- [Variables](references/variables.md) — Variable types, defaults, validation, and sensitivity.
- [Outputs](references/outputs.md) — Output declarations, sensitivity, and preconditions.
- [Providers](references/providers.md) — Provider versioning, configuration, and constraints.
- [Resources](references/resources.md) — Lifecycle meta-arguments, assertions, iteration, and refactoring.
- [Data Sources](references/data-sources.md) — Using data sources for cloud-assigned IDs.
- [Remote State](references/remote-state.md) — Backends, locking, encryption, and state security.
- [Security](references/security.md) — Credential management, IAM scoping, and static analysis.
- [Tagging](references/tagging.md) — Consistent resource tagging and enforcement.
- [Testing & CI/CD](references/testing.md) — Static validation, unit tests, pipelines, and drift detection.

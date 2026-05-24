---
applyTo: "**/*.tf"
---

# Terraform — Lifecycle, Data Sources, and Iteration

## Lifecycle meta-arguments

- Set `create_before_destroy = true` on resources that cannot tolerate downtime during replacement.
- Verify the provider supports concurrent old and new objects before setting `create_before_destroy = true`.
- Set `prevent_destroy = true` only on data resources that cannot be recreated (e.g., RDS instances, S3 buckets with live data).
- Use specific attribute lists in `ignore_changes` (e.g., `ignore_changes = [tags, desired_count]`).
- Never use `ignore_changes = all`.
- Use `replace_triggered_by` when an upstream change is not detected automatically.

## Data sources

- Use data sources to look up cloud-assigned IDs (AMI IDs, VPC IDs, subnet IDs).
- Never hardcode cloud-assigned IDs.
- Avoid `depends_on` on data blocks.
- Restructure to use implicit reference chains instead of `depends_on` on data sources.

## Refactoring

- Use `moved` blocks (Terraform ≥ 1.1) instead of `terraform state mv` for renames and restructuring.
- Use declarative `import` blocks (Terraform ≥ 1.5) instead of `terraform import` CLI commands.
- Retain `moved` blocks until all callers have applied the change.

## Assertions

- Use `precondition` blocks to enforce assumptions before resource creation.
- Use `postcondition` blocks to enforce guarantees after apply.
- Use `check` blocks (Terraform ≥ 1.5) for health assertions that warn without blocking.
- Use `precondition` or `postcondition` when failures must block the apply.

## Iteration

- Use `for_each` over `count` when instances have stable identifiers.
- Never use `count` on resources where identity must remain stable.
- Use `for_each = toset(var.subnet_ids)` for collections requiring stable identity.

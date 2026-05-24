---
applyTo: "**/*.tf"
---

# Terraform — Lifecycle

## Lifecycle meta-arguments

- Set `create_before_destroy = true` on resources that cannot tolerate downtime during replacement.
- Verify the provider supports concurrent old and new objects before setting `create_before_destroy = true`.
- Set `prevent_destroy = true` only on data resources that cannot be recreated (e.g., RDS instances, S3 buckets with live data).
- Use specific attribute lists in `ignore_changes` (e.g., `ignore_changes = [tags, desired_count]`).
- Never use `ignore_changes = all`.
- Use `replace_triggered_by` when an upstream change is not detected automatically.

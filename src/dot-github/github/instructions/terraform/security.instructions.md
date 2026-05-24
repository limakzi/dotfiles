---
applyTo: "**/*.tf"
---

# Terraform — Security

- Never hardcode credentials, passwords, or tokens in `.tf` or `.tfvars` files.
- Source credentials from environment variables, instance profiles, workload identity, or a secrets manager.
- Use `data "aws_iam_policy_document"` instead of inline JSON for IAM policies.
- Never grant `Action: "*"` and `Resource: "*"` in the same IAM statement.
- Scope IAM actions and resources to the minimum required.
- Add `.gitignore` entries for `*.tfstate`, `*.tfstate.backup`, `*.tfplan`, `*.tfvars`, `.terraform/`, and `crash.log`.
- Run `trivy config .` or `checkov -d .` in CI.
- Fail the pipeline on HIGH or CRITICAL findings.
- Run `tflint --recursive` with the provider ruleset (e.g., `tflint-ruleset-aws`).
- Avoid provisioners (`remote-exec`, `local-exec`).
- Prefer provider-managed configuration (e.g., AWS SSM Run Command, cloud-init).
- When using provisioners, never pass secrets as command arguments.
- Use the `environment` block with `sensitive = true` variables for secrets in provisioners.
- Use OIDC or workload identity credentials in CI/CD.
- Never use long-lived static access keys in CI/CD.
- Configure separate plan and apply roles.
- When suppressing a static analysis finding inline (e.g., `#tfsec:ignore:...`), include an expiry date.
- Include a tracking reference (e.g., a Jira ticket) with every inline suppression.

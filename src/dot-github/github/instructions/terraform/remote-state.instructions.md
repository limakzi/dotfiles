---
applyTo:
  - "**/*.tf"
  - "**/.gitignore"
---

# Terraform — Remote State

- Use a remote backend (S3, GCS, or HCP Terraform) in all shared environments.
- Never use a local backend in shared environments.
- Enable state locking on every backend that supports it.
- For S3, use `use_lockfile = true`.
- Use `terraform_remote_state` data sources to read outputs from other state files.
- Never duplicate resource definitions across root modules.
- Store backend configuration in `backend.tf`.
- Never commit `terraform.tfstate`, `terraform.tfstate.backup`, or `*.tfplan` to version control.
- Add `*.tfstate`, `*.tfstate.backup`, and `*.tfplan` to `.gitignore`.
- For S3 state, set `encrypt = true` and supply a `kms_key_id`.
- For GCS state, set `kms_encryption_key`.
- Enable versioning on the S3 state bucket.
- Restrict state bucket IAM to the Terraform executor role.
- Use exact resource ARNs on state bucket IAM policies.
- Never grant `s3:*` or `Resource: "*"` on the state bucket.
- Enable access logging on the state bucket.
- Enable CloudTrail data events on the state bucket.

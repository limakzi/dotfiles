---
applyTo: "**/*.tf,.github/workflows/**"
---

# Terraform — testing and ci/cd

## Static validation

- Run `terraform fmt -check -recursive` as the first CI gate.
- Run `terraform validate` as the second CI gate.
- Fail the pipeline on any formatting or syntax error.

## Unit and integration tests

- Write tests as `.tftest.hcl` files in a `tests/` directory.
- Use `command = plan` for logic and naming validation.
- Use `command = apply` only when real resource behavior must be verified.
- Use `mock_provider` blocks (Terraform ≥ 1.7) for unit tests.
- Include at least one `assert` block in every `run` block.
- Write `error_message` text that states the expected value.
- Use `expect_failures` to verify that `validation` blocks and `precondition`s reject invalid inputs.

## CI/CD pipeline

- Save the plan with `-out=tfplan`.
- Apply the saved plan artifact; never re-plan at apply time.
- Set `TF_IN_AUTOMATION=true` in all CI environments.
- Use `-input=false` on all Terraform commands in automation.
- Never use `-target` in pipelines.
- Require manual approval before applying to production.

## Drift detection

- Schedule `terraform plan -refresh-only` runs against all environments.
- Alert on non-empty diffs.

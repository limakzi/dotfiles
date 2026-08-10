---
description: Delete temporary Terraform/OpenTofu `import` block files
argument-hint: "[directory]"
---
Please delete the temporary `import` block files under: $ARGUMENTS

If no target is given above, use the current directory.

1. Find files named `import.tf`, `imports.tf`, `import.tofu`, or `imports.tofu`.
2. Delete every file whose content is only `import` blocks and comments.
3. In files that mix `import` blocks with other configuration, remove only the `import` blocks and keep the file.
4. Report each deleted file and each edited file.

Note: Delete only after the import has been applied — an unapplied `import` block is not temporary.

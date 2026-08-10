---
description: Delete temporary Terraform/OpenTofu `import` and `moved` block files
argument-hint: "[directory]"
---
Please delete the temporary `import` and `moved` block files under: $ARGUMENTS

If no target is given above, use the current directory.

1. Find files named `import.tf`, `imports.tf`, `moved.tf`, `moves.tf`, and their `.tofu` equivalents.
2. Delete every file whose content is only `import`/`moved` blocks and comments.
3. In files that mix `import`/`moved` blocks with other configuration, remove only those blocks and keep the file.
4. Report each deleted file and each edited file.

Note: Delete only after the corresponding import or move has been applied by all callers.

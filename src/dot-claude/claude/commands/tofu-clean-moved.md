---
description: Delete temporary Terraform/OpenTofu `moved` block files
argument-hint: "[directory]"
---
Please delete the temporary `moved` block files under: $ARGUMENTS

If no target is given above, use the current directory.

1. Find files named `moved.tf`, `moves.tf`, `moved.tofu`, or `moves.tofu`.
2. Delete every file whose content is only `moved` blocks and comments.
3. In files that mix `moved` blocks with other configuration, remove only the `moved` blocks and keep the file.
4. Report each deleted file and each edited file.

Note: Retain `moved` blocks until all callers have applied the change; confirm that before deleting.

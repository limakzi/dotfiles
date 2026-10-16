---
name: code-github-actions
description: Rules and conventions for creating and structuring GitHub Actions workflow files. Use when working in `.github/workflows/`.
metadata:
  version: "0.1.0"
  category: "ci-cd"
  author: "Kamil Zabielski"
---

# GitHub Actions

- Always use the `.yaml` extension (not `.yml`) when creating GitHub Actions workflow files.
- Workflow files must be located in `.github/workflows/`.
- Keep workflows modular, secure, and well-pinned with specific action commit hashes or release tags.
- Do not state the default value in an input `description`.
- List the accepted values in the `description` of every `workflow_call` or `workflow_dispatch` input restricted to a fixed set (e.g., `Runner size. One of: small, large.`).

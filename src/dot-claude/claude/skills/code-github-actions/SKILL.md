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

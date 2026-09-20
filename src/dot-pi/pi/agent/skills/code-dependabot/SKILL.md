---
name: code-dependabot
description: Rules for creating and configuring Dependabot configuration files. Use when working with `.github/dependabot.yaml`.
metadata:
  version: "0.1.0"
  category: "devops"
  author: "Kamil Zabielski"
---

# Dependabot

- Always use the `.yaml` extension (not `.yml`) when creating a Dependabot configuration file.
- The configuration file must be located at `.github/dependabot.yaml`.
- The configuration file must always start with `---` on the first line.
- When working in a repository that does not have `.github/dependabot.yaml`, suggest creating one covering all package ecosystems detected in the repository.

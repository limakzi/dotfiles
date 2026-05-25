---
description: Rules for defining and organizing custom commands and environments in LaTeX.
applyTo:
  - "**/*.tex"
  - "**/*.sty"
---

# LaTeX — commands

## Defining commands

- Use `\newcommand{\name}[n]{definition}` for simple commands.
- Use `\NewDocumentCommand{\name}{arg-spec}{definition}` for commands with optional or typed arguments.
- Never use `\def` — it silently overwrites existing commands.
- Never use `\renewcommand` on standard LaTeX commands unless absolutely necessary.

## Naming

- Name commands after their semantic meaning, not their appearance (`\term` not `\italic`).
- Use camelCase for multi-word command names: `\keyTerm`, `\codeSnippet`.

## Organization

- Define all custom commands in the preamble or a dedicated `commands.tex` file.
- Group related commands under a `%% --- Custom commands ---` comment.
- Never define commands inside `\begin{document}`.

## Environments

- Define custom environments with `\newenvironment{name}{begin-code}{end-code}`.
- Use `\NewDocumentEnvironment` for environments with arguments.

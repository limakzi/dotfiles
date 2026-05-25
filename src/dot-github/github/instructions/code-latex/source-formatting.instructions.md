---
description: Rules for writing readable and clean LaTeX source code, including indentation, line breaks, and named environments.
applyTo:
  - "**/*.tex"
  - "**/*.sty"
  - "**/*.cls"
---

# LaTeX — source formatting

## Line breaks

- Write one sentence per source line.
- Break at natural clause boundaries within long sentences.
- Do not split words across lines with a trailing `%` to suppress whitespace unless necessary.

## Indentation

- Indent every environment body by 2 spaces.
- Indent nested environments by an additional 2 spaces.

## Blank lines

- Separate paragraphs with a single blank source line.
- Never use `\\` to end a paragraph — use a blank line instead.
- Place a blank line before and after every display environment.

## Named environments

- Always use named `\begin{...}` / `\end{...}` environments — never TeX primitives.
- Never use `$$...$$` for display math — use `\begin{equation}` or `\begin{equation*}`.
- Never use `\[...\]` for display math — use `\begin{equation*}` for explicit named markup.

## Comments

- Mark each major preamble group with `%% --- Group name ---`.
- Use `%` comments to explain non-obvious choices.
- Do not leave commented-out code in committed files.

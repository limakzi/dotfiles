---
description: Rules for semantic markup, typography, spacing, and font configuration in LaTeX.
applyTo:
  - "**/*.tex"
---

# LaTeX — typography

## Semantic markup

- Use `\emph{}` for emphasis — never `\textit{}` for semantic emphasis.
- Use `\textbf{}` for bold — define a semantic command if used repeatedly.
- Never use old-style font switches: `\bf`, `\it`, `\rm`, `\tt`, `\sf`.
- Define semantic commands (e.g., `\newcommand{\term}[1]{\emph{#1}}`) for repeated presentational patterns.

## Spacing

- Use `~` for a non-breaking space before cross-references and citations (e.g., `\Cref{fig:example}`, `\parencite{source}`, `Fig.~\Cref{fig:example}`), and before abbreviations.
- Use `\,` for a thin space between a number and its unit.
- Never use `\ ` (backslash-space) to force a space after a mid-sentence period — rewrite instead.
- Never use `\vspace` or `\hspace` for layout — use them only for intentional mathematical spacing.

## Paragraph breaks

- Separate paragraphs with a blank source line — never `\\` for paragraph breaks.

## Font configuration

- For pdfLaTeX: specify font encoding with `\usepackage[T1]{fontenc}`.
- For LuaLaTeX or XeLaTeX: configure fonts with `\usepackage{fontspec}` and `\setmainfont{...}`.
- Load `microtype` to enable microtypographic adjustments.

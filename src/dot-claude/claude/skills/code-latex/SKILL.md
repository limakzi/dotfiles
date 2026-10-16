---
name: code-latex
description: Comprehensive rules and best practices for writing clean LaTeX documents, math, formatting, figures, Beamer presentations, and packages. Use when editing or writing `.tex` files.
metadata:
  version: "0.1.0"
  category: "documentation"
  author: "Kamil Zabielski"
---

# LaTeX Guidelines

## Structure & Document Class
- Declare `\documentclass` as the first non-comment line (`article`, `report`, `book`, `beamer`).
- Group preamble into sections (encoding/fonts, layout, math, bibliography, custom commands) with `%% --- Group name ---` comments.
- Use `\include{}` for chapter files and `\input{}` for preamble fragments.

## Source Formatting & Typography
- Write one sentence per source line and break at natural clause boundaries.
- Indent environment bodies by 2 spaces and separate paragraphs with a blank source line.
- Use `\emph{}` for semantic emphasis, `~` for non-breaking spaces before cross-references/citations, and `\,` between numbers and units.
- Load `microtype` for microtypographic adjustments.

## Math & Equations
- Use `\begin{equation}` / `\begin{align}` for display math; never use `$$...$$` or `\[...\]`.
- Use `$...$` for inline math expressions.
- Declare custom operators with `\DeclareMathOperator` and use `\text{}` or `\mathrm{}` inside math for text.

## Floats, Figures & Tables
- Use `[htbp]` as default float placement; avoid `[H]`.
- Place `\caption` below figures and above tables.
- Use `booktabs` rules (`\toprule`, `\midrule`, `\bottomrule`) in tables; never use vertical rules (`|`).
- Write captions as complete sentences ending with a period.

## Commands & Environments
- Use `\newcommand` or `\NewDocumentCommand` for custom commands; never use `\def`.
- Name commands after their semantic meaning using camelCase (`\keyTerm`).

## Cross-References & References
- Prefix labels with `sec:`, `fig:`, `tab:`, `eq:`, `lst:`, `alg:`, `app:`.
- Use `\cref{}` and `\Cref{}` from `cleveref`; never use bare `\ref{}`.
- Use `biblatex` with `biber` backend (`\textcite`, `\parencite`).

## Packages & Beamer
- Load `hyperref` late in the preamble and `cleveref` after `hyperref`.
- For Beamer, wrap slides in `\begin{frame}{Title}` and keep frames focused on one point.

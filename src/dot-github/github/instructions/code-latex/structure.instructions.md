---
description: Rules for LaTeX document structure, preamble organization, sectioning, and file splitting.
applyTo:
  - "**/*.tex"
  - "**/*.cls"
---

# LaTeX — structure

## Document class

- Declare `\documentclass` as the first non-comment line.
- Use `article` for papers, `report` for theses, `book` for books, `beamer` for presentations.
- Pass options explicitly: `\documentclass[12pt,a4paper]{article}`.

## Preamble

- Load all packages in the preamble, never inside `\begin{document}`.
- Group preamble into sections: encoding/fonts, layout, math, bibliography, custom commands.
- Mark each group with a `%% --- Group name ---` comment.

## Document body

- Use `\begin{document}` / `\end{document}` as the outermost environment.
- Place `\maketitle` inside `\begin{document}`.

## Sectioning

- Use `\section`, `\subsection`, `\subsubsection` — do not skip levels.
- Use `\appendix` to mark the appendix boundary.
- Do not use `\subsubsubsection` — restructure instead.

## File organization

- Use `\include{filename}` for chapter-level files.
- Use `\input{filename}` for smaller fragments such as preamble parts.
- Use `\includeonly` during editing to compile a subset.
- Name each chapter file `chap-<slug>.tex`.

---
description: Rules for loading packages in LaTeX, including load order, essential packages, and deprecated packages to avoid.
applyTo:
  - "**/*.tex"
  - "**/*.sty"
  - "**/*.cls"
---

# LaTeX — packages

## Load order

- For pdfLaTeX: load `babel` before most other packages.
- For LuaLaTeX or XeLaTeX: load `fontspec` before `polyglossia`, then load `polyglossia` before most other packages.
- Load `hyperref` late in the preamble, after most other packages.
- Load `cleveref` after `hyperref`.
- Load `glossaries` after `hyperref`.

## Essential packages

- Load `amsmath` for math typesetting.
- Load `microtype` for microtypography.
- Load `booktabs` for publication-quality tables.
- Load `graphicx` for including images.
- Load `biblatex` for bibliography management.
- Load `hyperref` for PDF metadata and clickable links.
- Load `cleveref` for smart cross-references.
- Load `xcolor` with `[dvipsnames]` when color is needed.

## Engine-specific encoding

- For pdfLaTeX: load `\usepackage[T1]{fontenc}` and `\usepackage[utf8]{inputenc}` before other packages.
- For LuaLaTeX or XeLaTeX: load `fontspec` instead of `fontenc` and `inputenc`.

## Deprecated packages — never use

- Never load `inputenc` with LuaLaTeX or XeLaTeX.
- Never use `epsfig` — use `graphicx` instead.
- Never use `subfigure` — use `subcaption` instead.
- Never use `cite` — use `biblatex` instead.
- Never use `natbib` for new projects — use `biblatex` instead.
- Never use `times`, `mathptm`, or `helvet` — use `fontspec` or `newtxtext`/`newtxmath`.
- Never use `float` package's `[H]` specifier without a strong reason.

---
description: Rules for label naming conventions and cross-references using cleveref in LaTeX.
applyTo:
  - "**/*.tex"
---

# LaTeX — cross-references

## Label naming

- Prefix every label with its type:
  - `sec:` for sections and subsections
  - `fig:` for figures
  - `tab:` for tables
  - `eq:` for equations
  - `lst:` for code listings
  - `alg:` for algorithms
  - `app:` for appendices
- Use lowercase, hyphen-separated slugs: `\label{fig:training-loss}`.
- Place `\label` immediately after the item it labels — after `\caption` in floats, after `\begin{equation}` in math.

## Cross-reference commands

- Use `\cref{}` for mid-sentence references: "see \cref{fig:results}".
- Use `\Cref{}` at the start of a sentence: "\Cref{tab:data} shows…".
- Never use bare `\ref{}` — always use `\cref` or `\Cref` from `cleveref`.
- Never use `\eqref{}` — use `\cref{eq:<name>}` instead.

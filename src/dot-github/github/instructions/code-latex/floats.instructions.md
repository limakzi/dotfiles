---
description: Rules for figures, tables, captions, and float placement in LaTeX.
applyTo:
  - "**/*.tex"
---

# LaTeX — floats

## Float placement

- Use `[htbp]` as the default placement specifier.
- Avoid `[H]` from the `float` package — it disables float optimization.
- Place `\label` after `\caption` inside every float.

## Figures

- Place `\caption` below the figure content.
- Include images with `\includegraphics[width=\linewidth]{filename}` — omit the file extension.
- Always wrap images in `\begin{figure}` / `\end{figure}` — never place them inline.
- Use `subcaption` and `\begin{subfigure}` for sub-figures.

## Tables

- Place `\caption` above the table content.
- Use `booktabs` rules: `\toprule`, `\midrule`, `\bottomrule` — never `\hline`.
- Use `tabularx` or `tabulary` for auto-width columns.
- Never use vertical rules (`|`) in publication tables.

## Captions

- Write captions as complete sentences ending with a period.
- Provide a short caption `\caption[short]{Long caption text.}` when a list of figures or tables is generated.

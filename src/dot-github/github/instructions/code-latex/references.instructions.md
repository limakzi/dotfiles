---
description: Rules for bibliography management and citation commands in LaTeX using biblatex and biber.
applyTo:
  - "**/*.tex"
  - "**/*.bib"
---

# LaTeX — references

## Bibliography backend

- Use `biblatex` with the `biber` backend — never use legacy `bibtex`.
- Load biblatex with: `\usepackage[backend=biber,style=<style>]{biblatex}`.
- Add the bibliography resource with `\addbibresource{references.bib}`.
- Print the bibliography with `\printbibliography`.

## Citation commands

- Use `\textcite{}` for an in-sentence citation: "Smith et al. (2020) showed…".
- Use `\parencite{}` for a parenthetical citation: "…(Smith et al., 2020)".
- Use `\autocite{}` when the citation style controls placement.
- Never use `\cite{}` in new documents — use `\textcite` or `\parencite`.

## Cite keys

- Format cite keys as `<lastname><year><keyword>` (e.g., `smith2020learning`).
- Use only lowercase ASCII in cite keys.
- Keep cite keys consistent across the whole project.

## .bib files

- Store one `.bib` file per project at the project root named `references.bib`.
- Add a `doi` or `url` field to every entry where available.
- Sort `.bib` entries alphabetically by cite key.

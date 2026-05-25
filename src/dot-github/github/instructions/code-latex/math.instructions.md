---
description: Rules for typesetting mathematics in LaTeX using named environments and amsmath.
applyTo:
  - "**/*.tex"
---

# LaTeX — math

## Display math environments

- Use `\begin{equation}` for a single numbered display equation.
- Use `\begin{equation*}` for a single unnumbered display equation.
- Use `\begin{align}` for multiple aligned numbered equations.
- Use `\begin{align*}` for multiple aligned unnumbered equations.
- Use `\begin{gather}` for centered, non-aligned multi-line equations.
- Use `\begin{multline}` for a single equation that spans multiple lines.
- Never use `$$...$$` — it is a TeX primitive that bypasses LaTeX spacing.
- Never use `\[...\]` — use `\begin{equation*}` for explicit, named markup.
- Never use `\eqnarray` — it is deprecated; use `align` instead.

## Inline math

- Use `$...$` for inline math expressions.

## Operators and notation

- Declare custom operators with `\DeclareMathOperator{\myop}{myop}`.
- Use `\text{}` inside math for words or abbreviations.
- Use `\mathrm{}` for upright letters in math (e.g., constants, units).
- Use `\mathbf{}` for vectors and `\boldsymbol{}` for bold Greek letters.

## Numbering

- Place `\label{eq:<name>}` immediately after `\begin{equation}` or after `\\` in `align`.
- Use `\nonumber` or `*`-variants to suppress unwanted equation numbers.

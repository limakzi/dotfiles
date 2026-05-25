---
description: Rules for writing clean Beamer presentations in LaTeX.
applyTo:
  - "**/*.tex"
---

# LaTeX — Beamer

## Document setup

- Use `\documentclass{beamer}`.
- Set the theme with `\usetheme{...}` and color theme with `\usecolortheme{...}` in the preamble.
- Add `\setbeamertemplate{navigation symbols}{}` to remove navigation bars unless needed.

## Frames

- Wrap every slide in `\begin{frame}{Title}` / `\end{frame}`.
- Keep each frame focused on one point.
- Use the title as the argument to `\begin{frame}` rather than a separate `\frametitle{}`.

## Overlays

- Use `\uncover<n->{}` to reveal content progressively.
- Use `\only<n>{}` for content that occupies no space when hidden.
- Limit `\pause` to at most once per frame — replace further uses with explicit overlay specs.
- Never apply overlays directly on `\begin{equation}` — animate surrounding text instead.

## Content

- Use `\begin{itemize}` and `\begin{enumerate}` for lists.
- Use `block`, `alertblock`, and `exampleblock` environments for highlighted content.
- Never place long paragraphs of text on a slide.

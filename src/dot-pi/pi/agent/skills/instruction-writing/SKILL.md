---
name: instruction-writing
description: Rules and guidelines for writing instruction file content, structure, writing style, and locations. Use when creating or editing instruction files (`.instructions.md`, `AGENTS.md`, `SKILL.md`).
metadata:
  version: "0.1.0"
  category: "documentation"
  author: "Kamil Zabielski"
---

# Instruction Writing Guidelines

## Writing Style
- Write short sentences in imperative mood using bullet points (one rule per bullet).
- No adjectives, filler words, or passive voice. Be specific.

## Content
- State what to do, covering behavior and output.
- Include file paths and extensions when relevant.
- Include at least one non-obvious rule per file — omit rules any developer would apply without guidance.
- Add examples for non-obvious rules. Do not repeat rules or explain why.

## Structure & Locations
- One topic per file with a single `#` heading matching the topic and `##` subheadings.
- Apply rules to the narrowest matching scope.
- Validate instruction files before committing.

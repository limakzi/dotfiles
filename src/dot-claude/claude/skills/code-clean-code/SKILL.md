---
name: code-clean-code
description: Software engineering principles and best practices from Clean Code covering general principles, naming, functions, comments, formatting, classes, and error handling. Use when writing or refactoring code.
metadata:
  version: "0.1.0"
  category: "software-engineering"
  author: "Kamil Zabielski"
---

# Clean Code Principles

## General Principles
- Leave the code cleaner than you found it (Boy Scout Rule).
- Do not repeat yourself (DRY).
- Prefer the simplest solution that works (KISS).
- Do not add functionality until it is necessary (YAGNI).
- Write code for the reader, not the compiler.

## Naming
- Use intention-revealing names.
- Avoid disinformation and encodings (no Hungarian notation, no type prefixes).
- Use pronounceable, searchable names.
- Pick one word per concept and use it consistently throughout the codebase.
- Name classes as nouns; name methods as verbs.

## Functions
- Write functions that do one thing.
- Keep functions under 20 lines.
- Limit function arguments to fewer than three.
- Avoid flag arguments; split flag-argument functions into separate functions.
- Separate commands from queries.

## Comments
- Refactor unclear code instead of commenting it.
- Explain intent, clarify, or warn of consequences when commenting.
- Avoid redundant, misleading, or noise comments.
- Delete commented-out code.

## Formatting
- Keep files small and focused to one topic.
- Place related code vertically close together.
- Declare variables close to their usage.
- Place functions just below their callers.

## Classes
- Keep classes small.
- Give each class a single responsibility (SRP) and high cohesion.
- Prefer composition over inheritance.
- Minimize public surface area.

## Error Handling
- Use exceptions rather than return codes.
- Write the happy-path first, then handle edge cases.
- Provide context when throwing exceptions.
- Do not return or pass `null`; use empty collections or special-case objects instead.

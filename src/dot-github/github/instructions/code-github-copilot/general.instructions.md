---
applyTo:
  - "**/*.instructions.md"
  - "**/copilot-instructions.md"
  - "**/AGENTS.md"
  - "**/CLAUDE.md"
  - "**/GEMINI.md"
---

# General

- Create one instruction file per topic.
- Apply rules to the narrowest matching glob.
- Write `applyTo` as a YAML list with one pattern per line.
- Add `applyTo` frontmatter only in path-specific files.
- Do not duplicate rules across files.
- Validate instruction files before committing.

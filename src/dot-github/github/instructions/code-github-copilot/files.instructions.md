---
applyTo: "**/*.instructions.md,**/copilot-instructions.md,**/AGENTS.md,**/CLAUDE.md,**/GEMINI.md"
---

# Instruction Files

## Locations

- `.github/copilot-instructions.md` — repository-wide rules.
- `.github/instructions/*.instructions.md` — path-specific rules.
- `~/.config/github/instructions/**/*.instructions.md` — global rules.
- `AGENTS.md` — agent rules.
- `CLAUDE.md` / `GEMINI.md` — model-specific rules.

## Frontmatter

- Add `applyTo` glob to path-specific files.
- Use comma-separated patterns for multiple paths.
- Omit frontmatter in repository-wide files.

## Structure

- One topic per file.
- Use a single `#` heading matching the topic.
- Group related rules under `##` subheadings.

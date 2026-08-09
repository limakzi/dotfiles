---
description: Plan a complex task, outlining steps and files to be touched before executing
argument-hint: "[task]"
---
Please create a detailed step-by-step implementation plan for: ${1:-current task}

Focus on:
1. Checking for existing open todos via `todo action="list"`. If a matching todo is found, retrieve its details using `todo action="get" id="TODO-<id>"`.
2. Proposing how to manage tracking for this task (e.g., linking with the existing todo, creating a new todo, or skipping todo tracking).
3. Identifying which files need to be modified or created.
4. Highlighting any potential risks, dependencies, or architectural considerations.
5. Breaking down the execution into logical, incremental steps.
6. Explaining the reasoning behind the proposed changes.
7. Do not make any decisions; always use the `ask_user` tool to present options and let the user make decisions.

Todo Guidelines:
- **Do not make any write/mutation calls to the todo tool (such as create, claim, update, append, or delete) during this initial planning phase.** Only read operations (`list`, `get`) are allowed before user confirmation.
- Once the user confirms the plan, you will then claim, create, or update the todo accordingly as part of the execution.

Do not write the final implementation yet. Present the plan first for review and confirmation.

At the end of the plan, use the `ask_user` tool to ask the user to confirm, reject, or edit the plan.

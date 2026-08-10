---
name: task-planning
description: Guidelines and requirements for creating a detailed, step-by-step implementation plan before executing a complex task. Use when planning complex tasks.
metadata:
  version: "0.1.0"
  category: "planning"
  author: "Kamil Zabielski"
---

# Task Planning Guidelines

When asked to plan a complex task, follow these guidelines to outline steps and files before executing.

## Planning Focus
- **Todo Checking:** Always check for existing open todos first via `todo action="list"`. If a matching todo is found, retrieve its details using `todo action="get" id="TODO-<id>"`.
- **Tracking Management:** Propose how to manage tracking for the task (e.g., linking with the existing todo, creating a new todo, or skipping todo tracking).
- **File Identification:** Identify which files need to be modified or created.
- **Risk Assessment:** Highlight any potential risks, dependencies, or architectural considerations.
- **Incremental Steps:** Break down the execution into logical, incremental, and manageable steps.
- **Reasoned Explanations:** Explain the reasoning behind each of the proposed changes.
- **No Decisions:** Do not make any independent decisions on behalf of the user. Always use the `ask_user` tool to present choices and let the user decide.

## Todo Guidelines
- **No Mutations:** Do not make any write/mutation calls to the todo tool (such as create, claim, update, append, or delete) during the initial planning phase. Only read operations (`list`, `get`) are allowed before user confirmation.
- **Post-Confirmation:** Once the user confirms the plan, claim, create, or update the todo accordingly as part of the execution phase.

## Output Requirements
- Do not write the final implementation yet. Present the plan first for review and confirmation.
- At the end of the plan, use the `ask_user` tool to ask the user to confirm, reject, or edit the plan.

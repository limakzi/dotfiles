---
description: Plan a complex task, outlining steps and files to be touched before executing
argument-hint: "[task]"
---
Please create a detailed step-by-step implementation plan for: ${1:-current task}

Focus on:
1. Identifying which files need to be modified or created.
2. Highlighting any potential risks, dependencies, or architectural considerations.
3. Breaking down the execution into logical, incremental steps.
4. Explaining the reasoning behind the proposed changes.
5. Do not make any decisions; always use the `ask_user` tool to present options and let the user make decisions.

Do not write the final implementation yet. Present the plan first for review and confirmation.

At the end of the plan, include a standalone note letting the user know they can confirm, reject, or edit the plan, and that it is considered confirmed by default.

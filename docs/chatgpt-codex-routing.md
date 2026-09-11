# ChatGPT ↔ Codex Routing

## Principle

Choose the surface based on the work, not habit. ChatGPT and Codex are complementary parts of one workflow.

## Prefer ChatGPT when the work is primarily

- discovery and brainstorming;
- current research and source synthesis;
- defining requirements and acceptance criteria;
- strategy and decision support;
- business, product, UX, or audience reasoning;
- analyzing documents and mixed information;
- writing specifications, communications, or polished artifacts;
- designing prompts, workflows, skills, or automations;
- reviewing whether a built result solves the intended problem.

## Prefer Codex when the work is primarily

- inspecting a repository;
- understanding an existing codebase;
- implementation planning grounded in actual code;
- editing source files;
- refactoring;
- debugging;
- running commands and tests;
- CI and build troubleshooting;
- code review;
- integrations and migrations;
- repository maintenance.

## Use both when

A task crosses definition and implementation boundaries.

Typical sequence:

1. ChatGPT frames the outcome and requirements.
2. Codex inspects the repository and proposes an implementation plan.
3. Codex implements and verifies the change.
4. ChatGPT reviews the result against business/UX intent when useful.
5. Codex handles implementation corrections.

## Routing guardrails

### Do not use Codex too early

If the desired behavior, constraints, or acceptance criteria are materially unclear, resolve those first rather than asking Codex to guess a product specification.

### Do not keep coding work in ChatGPT too long

Once the task depends on real repository state, source files, commands, tests, or CI, move the work to Codex.

### Keep task briefs portable

A strong implementation brief should usually contain:

- outcome;
- relevant constraints;
- acceptance criteria;
- known decisions;
- explicit exclusions when important.

Repository conventions and persistent rules should remain in `AGENTS.md` and repository documentation instead of being recopied into every task.

## Mode selection

Before substantial work, select one primary mode:

- **Answer** — explain or decide without external execution.
- **Research** — gather and synthesize evidence.
- **Build** — create or modify an artifact/codebase.
- **Automate** — establish repeated or conditional execution.
- **Augment** — improve an existing human workflow without replacing it.

The mode can change as the project advances.

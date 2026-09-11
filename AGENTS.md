# AI Brain — Codex Operating Rules

This file defines the persistent operating behavior for Codex when working in this repository. For detailed shared principles, read the relevant files in `docs/` only when needed.

## Default behavior

1. Understand the requested outcome before changing code or files.
2. Inspect relevant repository context before making assumptions.
3. Infer the current project stage: Discovery, Research, Planning, Setup, Build, Test, Review, Ship, or Maintain.
4. For non-trivial work, separate planning from implementation.
5. Prefer explicit acceptance criteria and tests for implementation tasks.
6. Reuse repository conventions before inventing new patterns.
7. Keep persistent repository rules here; keep task-specific instructions in the task prompt.
8. When ambiguity can be resolved from the repository, inspect first. Otherwise choose a reasonable assumption and state it.
9. Validate changes with the narrowest relevant tests, then broader checks when warranted.
10. Surface material risks, migrations, security concerns, regressions, and unresolved assumptions.
11. Do not over-engineer small tasks.

## AI Brain routing

Before substantial work, silently determine:

- the objective;
- the project stage;
- the context required;
- whether ChatGPT, Codex, or another tool is the best surface;
- whether the task needs a direct answer, plan, implementation, test/review cycle, reusable workflow, or automation.

Codex is preferred for repository inspection, implementation planning, coding, refactoring, debugging, tests, CI, code review, integrations, and repository maintenance.

ChatGPT is preferred for discovery, research, requirements, strategy, synthesis, writing, business/UX reasoning, decision support, and post-build review.

If requirements are materially underdefined, do not compensate by generating a giant implementation prompt. Identify the missing decision or recommend resolving requirements in ChatGPT first.

## Context discipline

- Prefer progressive disclosure: read only the detailed Brain document needed for the current task.
- Do not load every Brain document by default.
- Keep reusable global principles separate from project-specific facts.
- Do not duplicate large bodies of instructions across prompts and files.
- Treat tests, source files, and current repository state as higher-authority implementation context than stale narrative documentation.

## Verification

Before declaring substantial implementation work complete:

1. Check the requested acceptance criteria.
2. Run or describe the narrowest relevant validation.
3. Expand validation when risk warrants it.
4. Report what was verified and what remains unverified.

## Learning loop

When a project produces a potentially reusable AI technique or workflow:

- treat one occurrence as a candidate, not automatically as a standard;
- separate project-specific observations from general guidance;
- validate/generalize before promoting it into the shared Brain;
- use stronger evidence for high-consequence guidance.

## Detailed references

- `docs/brain-operating-system.md`
- `docs/chatgpt-codex-routing.md`
- `docs/knowledge-schema.md`

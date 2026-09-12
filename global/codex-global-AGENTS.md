# AI Brain — Global Codex Operating Rules

Use this file as `~/.codex/AGENTS.md` so every Codex session inherits the Brain.

## Default operating behavior

- Infer the requested outcome and task scope from the user's instructions and available context.
- Bias toward action and completion. Do not stop at acknowledging capability or proposing a plan when execution is authorized.
- Inspect relevant repository context before changing files or code.
- Infer the project stage: Discovery, Research, Planning, Setup, Build, Test, Review, Ship, or Maintain.
- For non-trivial changes, separate planning from implementation and define acceptance criteria before coding when they are not already clear.
- Reuse repository conventions before inventing new patterns.
- Resolve ambiguity from repository context when possible. Otherwise make a reasonable assumption and state it; ask only when missing information would materially change the outcome or authorization is required.
- Keep persistent repo rules in project `AGENTS.md`; keep task-specific intent in the task prompt.
- Prefer progressive disclosure. Read only the detailed Brain/project documents needed for the current task.
- Treat source files, tests, and current repository state as higher-authority implementation context than stale narrative documentation.
- Validate changes with the narrowest relevant checks, then broaden only when risk, failures, or unresolved concerns warrant it.
- Surface material risks, migrations, security concerns, regressions, and unverified assumptions.
- Do not over-engineer small tasks.

## ChatGPT ↔ Codex routing

Codex is preferred for repository inspection, implementation planning grounded in real code, coding, refactoring, debugging, tests, CI, code review, integrations, migrations, and repository maintenance.

ChatGPT is preferred for discovery, current research, requirements, strategy, synthesis, writing, business/product/UX reasoning, decision support, and post-build review.

If requirements are materially underdefined, identify the missing product/behavior decision rather than compensating with a giant implementation prompt. If the work is clearly repository-dependent, continue in Codex.

## Prompt and context discipline

- Prompt enhancement is not synonymous with longer prompts.
- Prefer: Goal → Context → Tool → Method → focused task.
- Persistent context belongs in durable instructions; reference material belongs in docs; task intent belongs in the prompt.
- Do not duplicate large instruction sets across files and prompts.

## Learning loop

When a project produces a potentially reusable AI technique or workflow:

- treat one occurrence as a candidate, not automatically as a standard;
- separate project-specific observations from reusable guidance;
- validate and generalize before promoting it to the shared Brain;
- use stronger evidence for high-consequence guidance.

## Canonical Brain

The canonical Brain repository is `alexgm1290/AI-brain-system`. When working inside that repository, follow its root `AGENTS.md` and `docs/` references. For other repositories, inherit this global file and layer project-specific `AGENTS.md` rules on top.

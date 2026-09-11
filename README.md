# AI Brain System

A shared AI operating system for Alex across ChatGPT and Codex.

## Purpose

The Brain reduces prompt friction, recommends the right workflow or tool, captures useful AI knowledge, validates claims, and improves over time.

## Core model

The system uses two complementary durable sources:

- **Google Drive** — human-readable operating system and structured knowledge base.
- **This GitHub repository** — Codex-facing operating rules, implementation guidance, and reusable project conventions.

Project-specific context should stay with the project or repository. Reusable guidance should be promoted into the Brain only after it has been validated and generalized.

## Natural-language usage

No special commands are required. Examples:

- “I’m starting a project…” → infer project stage and recommend the next useful step.
- “Improve this prompt…” → enhance only when improvement is material.
- “Learn this…” → capture, validate, classify, and store reusable knowledge.
- “What do we know about X?” → retrieve validated guidance.
- “What should I do next?” → provide a stage-aware recommendation.
- “Should I use ChatGPT or Codex?” → route to the better surface.

## Repository structure

- `AGENTS.md` — persistent Codex operating rules.
- `docs/brain-operating-system.md` — shared behavior and lifecycle.
- `docs/knowledge-schema.md` — schema and quality rules for reusable knowledge.
- `docs/chatgpt-codex-routing.md` — routing rules between ChatGPT and Codex.

## Design principle

Keep persistent context in durable instructions. Keep task prompts focused. Prefer progressive disclosure over giant prompts.

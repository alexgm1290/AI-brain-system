# AI Brain — Knowledge Schema

## Purpose

Store reusable AI knowledge in a form that can be searched, evaluated, updated, and applied at the right project stage.

## Canonical fields

| Field | Purpose |
|---|---|
| Title | Clear name for the knowledge item |
| Category | Broad topic grouping |
| Tool | ChatGPT, Codex, Claude, Claude Code, or other relevant platform |
| Project Stage | Discovery, Research, Planning, Setup, Build, Test, Review, Ship, Maintain |
| Type | Prompt pattern, workflow, technique, rule, finding, anti-pattern, etc. |
| Original Claim | The source item as captured |
| Validated Guidance | What the evidence supports after validation |
| Status | Verified, Recommended, Situational, Experimental, Questionable, Outdated |
| Confidence | Strength of the conclusion |
| When To Use | Conditions where it is useful |
| When Not To Use | Boundaries and counterexamples |
| Example | Concrete application |
| Sources | Official/current sources and supporting evidence |
| Date Checked | Last validation date |
| Related Items | Connected Brain knowledge |
| Tags | Retrieval keywords |

## Evidence rules

1. Preserve the original claim before rewriting it.
2. Prefer current official documentation for platform capabilities and recommended behavior.
3. Use credible expert/community evidence to supplement official documentation where practice matters.
4. Distinguish demonstrated facts from recommendations and experiments.
5. One successful occurrence is a candidate lesson, not automatically a standard.
6. Repeated success or explicit owner direction can justify promotion, subject to risk.
7. High-consequence guidance requires stronger evidence.
8. Conflicting guidance should be reconciled, scoped, or marked situational rather than silently overwritten.

## Status definitions

- **Verified** — well supported as a factual capability, constraint, or behavior.
- **Recommended** — supported and generally useful as a default practice.
- **Situational** — useful under identifiable conditions but not a universal default.
- **Experimental** — promising but insufficiently validated.
- **Questionable** — evidence is weak, conflicting, or the claim is misleading.
- **Outdated** — previously relevant but superseded by newer capabilities or guidance.

## Promotion workflow

Inbox → classify → validate → scope → assign status/confidence → add example/boundaries → publish to Knowledge Base → revalidate when material platform changes occur.

## Retrieval principle

Search should favor applicable validated guidance over raw captured material. Raw Inbox items are evidence/candidates, not automatically recommendations.

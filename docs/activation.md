# AI Brain Activation

This repository contains the canonical cross-surface activation layers.

## 1. ChatGPT — global across chats

Use the contents of `global/chatgpt-custom-instructions.md` as your ChatGPT account-level Custom Instructions.

Current OpenAI behavior: Custom Instructions apply to all chats. Project instructions can override global Custom Instructions inside that project, so project-specific instructions should remain compatible with the Brain when possible.

## 2. Codex — global across repositories

Codex reads global instructions from `~/.codex/AGENTS.md` by default (or `$CODEX_HOME/AGENTS.md` when `CODEX_HOME` is set), then layers project-specific `AGENTS.md` files on top.

Install the canonical Brain global rules with:

```bash
curl -fsSL https://raw.githubusercontent.com/alexgm1290/AI-brain-system/main/scripts/install-codex-global.sh | bash
```

Restart open Codex sessions after installation.

Verify with:

```bash
codex --ask-for-approval never "Summarize the current instructions."
```

Expected result: Codex should report the AI Brain global operating rules, followed by any project-specific rules for the current repository.

## 3. AI Brain repository

The Brain repo itself has a root `AGENTS.md`, which layers repo-specific rules over the global Codex instructions.

## 4. Durable knowledge

- GitHub: Codex-facing policies and reusable implementation guidance.
- Google Drive: human-readable operating-system and structured knowledge-base content.
- Individual project/repository: local facts, requirements, decisions, and implementation context.

## 5. Knowledge promotion

Project-specific lesson → candidate → validate/generalize → shared Brain.

Do not promote raw tips or one-off observations directly into canonical guidance without validation.

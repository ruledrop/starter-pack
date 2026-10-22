# AGENTS.md — ShipSafe Starter

Universal instructions for AI coding agents. Works with Cursor, Copilot, Codex, Claude Code (via the one-line CLAUDE.md import), and any AGENTS.md tool.

## Before editing
- Read the relevant files and existing patterns first. Match the project's style.
- Make the smallest correct change. Don't refactor unrelated code.
- Never invent APIs, packages, or flags. If unsure, check the docs or ask.

## Security
- Never hardcode secrets, API keys, or tokens. Use env vars; keep `.env*` out of git and commit an `.env.example`.
- Never expose server secrets to client/browser code.
- Never write secrets or credentials into AGENTS.md, CLAUDE.md, or any rules file.
- Validate all external input. Check auth on every server endpoint.

## Finishing
- Run the project's lint, type-check, tests, and build when available; fix what you broke.
- Never edit, skip, or delete tests just to make them pass. Fix the code, or explain why the test is wrong and ask.
- Summarize what you changed and anything you couldn't verify.

---
Want stack-specific rules (Next.js + Supabase, Godot 4, Shopify)? Get the full packs at https://ruledrop.github.io (ShipSafe).

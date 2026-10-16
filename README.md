# ShipSafe Packs: Starter Pack

**Drop-in rules that keep vibe-coded apps ship-safe.** Free, MIT-licensed.

A tiny, battle-tested set of instructions that stops the most common AI-agent mistakes: invented APIs, hardcoded secrets, sprawling diffs, and "done" without running checks.

> Formerly **RuleDrop**. Same packs, new name. Site: [ruledrop.github.io](https://ruledrop.github.io) · GitHub org still [`github.com/ruledrop`](https://github.com/ruledrop) for now.

## What's inside

| File | Used by |
|---|---|
| `.cursor/rules/core.mdc` | Cursor (`alwaysApply: true`, so it's included in every Agent chat) |
| `AGENTS.md` | Cursor, GitHub Copilot cloud agent, OpenAI Codex, Jules, Amp and any [AGENTS.md](https://agents.md)-compatible tool |

## Install (30 seconds)

```bash
git clone https://github.com/ruledrop/starter-pack /tmp/shipsafe
cp -r /tmp/shipsafe/.cursor /tmp/shipsafe/AGENTS.md your-project/
```

- **Claude Code:** `cp AGENTS.md CLAUDE.md`
- **GitHub Copilot (chat):** `mkdir -p .github && cp AGENTS.md .github/copilot-instructions.md`

Then tweak the bullets to your project. Short, specific rules work best.

## What the rules enforce
- Read first, make the smallest correct change, never invent APIs
- No hardcoded secrets; env vars only; `.env*` stays out of git
- Never put secrets in AGENTS.md / CLAUDE.md / rules files
- Validate input and check auth on every server endpoint
- Run lint, types, tests and build before calling it done

## Keep your rules lean
Agents follow short, specific rules best. Aim for roughly **under ~200 lines** of always-on instructions; move stack details into scoped rules (Cursor `globs` / Copilot `applyTo`) or skills. Prune monthly — delete rules the agent no longer needs. Never paste API keys, tokens, or private URLs into rules files.

## Want stack-specific rules?
Full packs for **Next.js + Supabase**, **Godot 4**, and **Shopify (Liquid + apps)** in Cursor, AGENTS.md, CLAUDE.md and Copilot formats: **launching soon** → [ShipSafe Packs on ruledrop.github.io](https://ruledrop.github.io)

## Contributing
Issues and PRs welcome, especially rules that fixed a real agent mistake for you.

## License
[MIT](LICENSE)

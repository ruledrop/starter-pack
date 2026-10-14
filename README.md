# RuleDrop Starter Pack

**Drop-in rules that make your AI coding agent ship like a senior dev.** Free, MIT-licensed.

A tiny, battle-tested set of instructions that stops the most common AI-agent mistakes: invented APIs, hardcoded secrets, sprawling diffs, and "done" without running checks.

## What's inside

| File | Used by |
|---|---|
| `.cursor/rules/core.mdc` | Cursor (`alwaysApply: true`, so it's included in every Agent chat) |
| `AGENTS.md` | Cursor, GitHub Copilot cloud agent, OpenAI Codex, Jules, Amp and any [AGENTS.md](https://agents.md)-compatible tool |

## Install (30 seconds)

```bash
git clone https://github.com/ruledrop/starter-pack /tmp/ruledrop
cp -r /tmp/ruledrop/.cursor /tmp/ruledrop/AGENTS.md your-project/
```

- **Claude Code:** `cp AGENTS.md CLAUDE.md`
- **GitHub Copilot (chat):** `mkdir -p .github && cp AGENTS.md .github/copilot-instructions.md`

Then tweak the bullets to your project. Short, specific rules work best.

## What the rules enforce
- Read first, make the smallest correct change, never invent APIs
- No hardcoded secrets; env vars only; `.env*` stays out of git
- Validate input and check auth on every server endpoint
- Run lint, types, tests and build before calling it done

## Want stack-specific rules?
Full packs for **Next.js + Supabase**, **Godot 4**, and **Shopify (Liquid + apps)** in Cursor, AGENTS.md, CLAUDE.md and Copilot formats: **coming soon** → [RuleDrop packs](#) <!-- TODO: replace with store link -->

## Contributing
Issues and PRs welcome, especially rules that fixed a real agent mistake for you.

## License
[MIT](LICENSE)

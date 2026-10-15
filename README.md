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

## Keep your rules lean
Agents start ignoring instructions once a rules file gets long. A few habits that keep these files working:
- Keep `AGENTS.md` / `CLAUDE.md` short (aim for well under ~200 lines): always/never rules plus the commands to build, test and lint.
- Only write down what the agent can't learn from the code or official docs. Link to docs instead of pasting them.
- Put path-specific rules in scoped files (Cursor `globs`, Claude Code `.claude/rules/`) and multi-step workflows in skills, not the root file.
- Never put secrets, API keys or tokens in any rules file. They get committed and sent to the model.
- When the agent makes the same mistake twice, add one line. Every month or so, delete rules it already follows.

## Want stack-specific rules?
Full packs for **Next.js + Supabase**, **Godot 4**, and **Shopify (Liquid + apps)** in Cursor, AGENTS.md, CLAUDE.md and Copilot formats: **launching soon** → [ruledrop.github.io](https://ruledrop.github.io)

## Contributing
Issues and PRs welcome, especially rules that fixed a real agent mistake for you.

## License
[MIT](LICENSE)

# ShipSafe Packs: Starter Pack

**Drop-in rules that keep vibe-coded apps ship-safe.** Free, MIT-licensed.

A tiny, battle-tested set of instructions that stops the most common AI-agent mistakes: invented APIs, hardcoded secrets, sprawling diffs, and "done" without running checks.

> Formerly **RuleDrop**. Same packs, new name. Site: [ruledrop.github.io](https://ruledrop.github.io) · GitHub org still [`github.com/ruledrop`](https://github.com/ruledrop) for now.

## What's inside

| File | Used by |
|---|---|
| `.cursor/rules/core.mdc` | Cursor (`alwaysApply: true`, so it's included in every Agent chat) |
| `AGENTS.md` | Cursor, GitHub Copilot cloud agent, OpenAI Codex, Jules, Amp and any [AGENTS.md](https://agents.md)-compatible tool |
| `CLAUDE.md` | Claude Code (one line, `@./AGENTS.md`, imports AGENTS.md so rules live in one place) |
| `GEMINI.md` | Gemini CLI (same one-line import; Gemini doesn't read AGENTS.md by default) |
| `.claude/settings.json` | Claude Code: hard-blocks reading `.env*` and `secrets/` (a rule can be ignored; a deny can't) |
| `examples/codeowners/` | CODEOWNERS that requires your review before anyone (or any agent PR) edits AGENTS.md, CLAUDE.md, Cursor/Claude config, MCP and IDE task/hook files, or workflows |
| `examples/claude-stop-hook/` | Opt-in Claude Code Stop hook that won't let the agent finish while tests fail |

## Install (30 seconds)

```bash
git clone https://github.com/ruledrop/starter-pack /tmp/shipsafe
cp -r /tmp/shipsafe/.cursor /tmp/shipsafe/.claude /tmp/shipsafe/AGENTS.md /tmp/shipsafe/CLAUDE.md /tmp/shipsafe/GEMINI.md your-project/
```

- **Claude Code / Gemini CLI:** nothing extra. `CLAUDE.md` and `GEMINI.md` just import `AGENTS.md`, so edit only AGENTS.md.
- **GitHub Copilot (chat):** `mkdir -p .github && cp AGENTS.md .github/copilot-instructions.md`

Then tweak the bullets to your project. Short, specific rules work best.

## What the rules enforce
- Read first, make the smallest correct change, never invent APIs
- No hardcoded secrets; env vars only; `.env*` stays out of git
- Never put secrets in AGENTS.md / CLAUDE.md / rules files
- Validate input and check auth on every server endpoint
- Run lint, types, tests and build before calling it done

## Rules ask, hooks enforce
Rules files are guidance, and agents sometimes skip them. For the things that must never happen, the pack also ships a Claude Code deny list for `.env*` files, plus an opt-in Stop hook that runs your tests before the agent can say it's done. If you already have a `.claude/settings.json`, merge the `permissions.deny` entries instead of overwriting it.

To keep rules from drifting, `examples/ci/rules-check.yml` is a GitHub Actions check that fails if `CLAUDE.md`/`GEMINI.md` stop importing `AGENTS.md`, if a rules file looks like it contains a secret, or if a rule mentions a `backticked/path` that no longer exists (stale rules make agents do the wrong thing). It also warns when a root rules file passes 150 lines and fails past 300, since agents follow short root files more reliably. Copy it to `.github/workflows/`.

## Keep your rules lean
Agents follow short, specific rules best. Aim for roughly **under ~200 lines** of always-on instructions; move stack details into scoped rules (Cursor `globs` / Copilot `applyTo`) or skills. Prune monthly — delete rules the agent no longer needs. Re-audit after every model upgrade too: newer models often do the right thing unprompted, so delete rules that only patched an older model's habits, and keep the ones that encode your project's facts (commands, paths, conventions) and hard safety limits. Never paste API keys, tokens, or private URLs into rules files.

## Want stack-specific rules?
Full packs for **Next.js + Supabase**, **Godot 4**, and **Shopify (Liquid + apps)** in Cursor, AGENTS.md, CLAUDE.md and Copilot formats: **launching soon** → [ShipSafe Packs on ruledrop.github.io](https://ruledrop.github.io)

## Contributing
Issues and PRs welcome, especially rules that fixed a real agent mistake for you.

## License
[MIT](LICENSE)

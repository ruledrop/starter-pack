# Opt-in: block "done" while tests fail (Claude Code)

Rules ask; hooks enforce. This Stop hook runs your tests when Claude tries to finish and sends it back to work if they fail.

1. Copy the script: `mkdir -p .claude/hooks && cp run-tests-on-stop.sh .claude/hooks/`
2. Merge this into `.claude/settings.json`:

```json
{
  "hooks": {
    "Stop": [
      { "hooks": [ { "type": "command", "command": "\"$CLAUDE_PROJECT_DIR\"/.claude/hooks/run-tests-on-stop.sh" } ] }
    ]
  }
}
```

Set `SHIPSAFE_TEST_CMD` if your tests aren't `npm test` (for example `pnpm test` or `pytest -q`). Keep the test command fast, since it runs every time Claude stops.

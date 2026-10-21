#!/usr/bin/env bash
# Claude Code Stop hook: block "done" while tests are red.
# Exit 2 tells Claude to keep working and shows it the failure.
input=$(cat)
# Avoid loops: if Claude is already continuing because of this hook, let it stop.
if echo "$input" | grep -q '"stop_hook_active": *true'; then exit 0; fi
TEST_CMD="${SHIPSAFE_TEST_CMD:-npm test --silent}"
if ! output=$($TEST_CMD 2>&1); then
  echo "Tests are failing. Fix them before finishing:" >&2
  echo "$output" | tail -40 >&2
  exit 2
fi
exit 0

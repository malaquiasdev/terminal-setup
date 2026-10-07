#!/usr/bin/env bash
set -uo pipefail

[[ -n "${TMUX:-}" && -n "${TMUX_PANE:-}" ]] || exit 0

MESSAGE="$(jq -r '.message // empty' 2>/dev/null)"
MESSAGE="${MESSAGE:-Claude precisa de você}"
MESSAGE="${MESSAGE//[$'\a\e;']/ }"
SESSION="$(tmux display-message -p -t "$TMUX_PANE" '#{session_name}')"

if [[ "$(tmux display-message -p -t "$TMUX_PANE" '#{session_attached}')" == 0 ]]; then
  tmux set-option -t "=$SESSION:" @claude_waiting 1
  tmux refresh-client -S 2>/dev/null
fi

tmux list-clients -F '#{client_tty}' | while read -r tty; do
  printf '\e]9;[%s] %s\a' "$SESSION" "$MESSAGE" >"$tty" 2>/dev/null
done
exit 0

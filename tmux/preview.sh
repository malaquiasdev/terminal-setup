#!/usr/bin/env bash
# Preview a tmux session/window in a popup via a grouped session.
# Grouped sessions share windows with the source but keep an independent
# active-window, so previewing doesn't yank the original client around.
set -uo pipefail

TARGET="${1:?usage: preview.sh <session[:window[.pane]]>}"
SRC_SESSION="${TARGET%%:*}"
GROUP="_preview_$$"

cleanup() { tmux kill-session -t "$GROUP" 2>/dev/null || true; }
trap cleanup EXIT INT TERM

tmux new-session -d -s "$GROUP" -t "$SRC_SESSION" 2>/dev/null || exit 1

if [[ "$TARGET" == *:* ]]; then
  WIN="${TARGET#*:}"
  WIN="${WIN%%.*}"
  tmux select-window -t "$GROUP:$WIN" 2>/dev/null || true
fi

TMUX= tmux attach -t "$GROUP"

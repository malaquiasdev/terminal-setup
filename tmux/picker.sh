#!/usr/bin/env bash
set -uo pipefail

SELF="$(cd "$(dirname "$0")" && pwd)/$(basename "$0")"
MODE="${1:-sessions}"
HOME_SESSION="home"

SESSION_PREVIEW="'$SELF' capture {1}:"
WINDOW_PREVIEW="'$SELF' capture {1}"

is_claude() {
  local command="$1" title="$2"
  [[ "$title" == ✳* || "$command" =~ ^[0-9]+\.[0-9]+ || "$command" == claude ]]
}

session_status() {
  local name="$1" active_command="$2" pane command title screen working=0 waiting=0
  CTX=''
  while IFS=$'\t' read -r pane command title; do
    is_claude "$command" "$title" || continue
    screen="$(tmux capture-pane -p -t "$pane" 2>/dev/null | awk 'NF' | tail -15)"
    if grep -qE -e 'esc to interrupt' -e '^[^[:alnum:]]*[[:alpha:]]+… \([0-9]+[hms]' <<<"$screen"; then
      working=$((working + 1))
    else
      waiting=$((waiting + 1))
    fi
    [[ -n "$CTX" ]] || CTX="$(grep -oE 'Ctx:[^0-9]*[0-9.]+[kM]?' <<<"$screen" | tail -1 | grep -oE '[0-9.]+[kM]?$')"
  done < <(tmux list-panes -s -t "=$name" -F '#{pane_id}	#{pane_current_command}	#{pane_title}')
  if ((working > 0 && waiting > 0)); then
    STATUS="⚙ $working trab · ● $waiting esp"
  elif ((working > 0)); then
    STATUS='⚙ trabalhando'
  elif ((waiting > 0)); then
    STATUS='● esperando você'
  else
    STATUS="  $active_command"
  fi
  ((working == 0 || waiting == 0)) && ((working + waiting > 1)) && STATUS="$STATUS ×$((working + waiting))"
  [[ -n "$CTX" ]] && CTX="ctx $CTX"
}

capture() {
  local target="$1" panes height pane label per
  panes="$(tmux list-panes -t "=$target" -F '#{pane_id}	#{pane_index}: #{pane_current_command}' 2>/dev/null)"
  if [[ "$(wc -l <<<"$panes")" -le 1 ]]; then
    tmux capture-pane -ep -t "=$target" | awk 'NF { last = NR } { lines[NR] = $0 } END { for (i = 1; i <= last; i++) print lines[i] }'
    return
  fi
  height="${FZF_PREVIEW_LINES:-40}"
  per=$((height / $(wc -l <<<"$panes") - 1))
  while IFS=$'\t' read -r pane label; do
    printf '\033[1;33m── painel %s ──\033[0m\n' "$label"
    tmux capture-pane -ep -t "$pane" | awk 'NF { last = NR } { lines[NR] = $0 } END { for (i = 1; i <= last; i++) print lines[i] }' | tail -n "$per"
  done <<<"$panes"
}

pad() {
  local text="$1" width="$2"
  text="${text:0:width}"
  printf '%s%*s' "$text" $((width - ${#text})) ''
}

ports_by_session() {
  awk -F'\t' '
    FILENAME == ARGV[1] { if (!seen[$1 FS $2]++) port[$1] = port[$1] ? port[$1] " :" $2 : ":" $2; next }
    FILENAME == ARGV[2] { split($0, f, " "); kids[f[2]] = kids[f[2]] " " f[1]; next }
    {
      queue = $2
      while (queue != "") {
        split(queue, q, " "); pid = q[1]; sub(/^[^ ]+ ?/, "", queue)
        if (pid in port && !(($1, pid) in done)) { done[$1, pid] = 1; out[$1] = out[$1] ? out[$1] " " port[pid] : port[pid] }
        if (pid in kids) queue = queue kids[pid]
        gsub(/^ +/, "", queue)
      }
    }
    END { for (s in out) print s "\t" out[s] }
  ' <(lsof -nP -iTCP -sTCP:LISTEN -F pn 2>/dev/null | awk '/^p/ { p = substr($0, 2) } /^n/ { sub(/.*:/, ""); print p "\t" $0 }') \
    <(ps -A -o pid=,ppid=) \
    <(tmux list-panes -a -F '#{session_name}	#{pane_pid}')
}

quota_label() {
  local pane quota=''
  while read -r pane; do
    quota="$(tmux capture-pane -p -t "$pane" 2>/dev/null | grep -oE 'Session:[^0-9]*[0-9.]+%' | tail -1 | grep -oE '[0-9.]+%$')"
    [[ -n "$quota" ]] && break
  done < <(tmux list-panes -a -F '#{pane_id}')
  printf ' Sessões%s · Enter entra · prefixo + S nova · Ctrl+x mata · Ctrl+r atualiza · prefixo + H volta aqui ' "${quota:+ · cota $quota}"
}

list_sessions() {
  local name windows command title ports portmap
  portmap="$(ports_by_session)"
  tmux list-sessions -F '#{session_name}	#{session_windows}	#{pane_current_command}	#{pane_title}' |
    grep -v -e '^_preview_' -e "^${HOME_SESSION}	" |
    while IFS=$'\t' read -r name windows command title; do
      session_status "$name" "$command"
      ports="$(awk -F'\t' -v s="$name" '$1 == s { print $2 }' <<<"$portmap")"
      printf '%s\t%s %s %s %s jan  %s\n' "$name" "$(pad "$name" 20)" "$(pad "$STATUS" 21)" "$(pad "$CTX" 12)" "$windows" "$ports"
    done
}

list_windows() {
  tmux list-windows -a -F '#{session_name}:#{window_index}	#{p24:#{session_name}:#{window_index}} #{window_name}#{?window_active,  ●,}' |
    grep -v -e '^_preview_' -e "^${HOME_SESSION}:"
}

pick() {
  local label="$1" kind="$2" preview="$3"
  shift 3
  local port=$((20000 + RANDOM % 20000)) refresher
  (
    tick=0
    while sleep 1; do
      tick=$((tick + 1))
      action='refresh-preview'
      ((tick % 3 == 0)) && action="reload-sync('$SELF' list-$kind)+refresh-preview"
      curl -s -XPOST "127.0.0.1:$port" -d "$action" >/dev/null 2>&1 || true
    done
  ) >/dev/null 2>&1 &
  refresher=$!
  trap 'kill $refresher 2>/dev/null' RETURN
  "list_$kind" |
    fzf --reverse \
      --listen "127.0.0.1:$port" \
      --track \
      --delimiter '\t' \
      --with-nth 2 \
      --accept-nth 1 \
      --border rounded \
      --border-label "$label" \
      --preview "$preview" \
      --preview-window 'right,60%,border-rounded,follow' \
      --preview-label ' Preview ' \
      --bind "ctrl-r:reload('$SELF' list-$kind)" \
      --color 'bg+:#3c3836,fg+:#ebdbb2,hl:#fabd2f,hl+:#fabd2f,border:#fe8019,label:#fe8019,pointer:#fe8019,prompt:#fe8019,info:#a89984' \
      "$@"
}

case "$MODE" in
  capture) capture "$2" ;;
  list-sessions) list_sessions ;;
  quota-label) quota_label ;;
  kill-session)
    printf "Matar a sessão %s? [s/N] " "$2"
    read -r -n 1 answer
    [[ "$answer" == [sS] ]] && tmux kill-session -t "=$2"
    ;;
  list-windows) list_windows ;;
  sessions)
    TARGET="$(pick ' Sessões ' sessions "$SESSION_PREVIEW")" || exit 0
    [[ -n "$TARGET" ]] && exec "$(dirname "$SELF")/preview.sh" "$TARGET"
    ;;
  switch)
    TARGET="$(pick ' Sessões ' sessions "$SESSION_PREVIEW")" || exit 0
    [[ -n "$TARGET" ]] && tmux switch-client -t "=$TARGET"
    ;;
  windows)
    TARGET="$(pick ' Janelas ' windows "$WINDOW_PREVIEW")" || exit 0
    [[ -n "$TARGET" ]] && exec "$(dirname "$SELF")/preview.sh" "$TARGET"
    ;;
  home)
    while true; do
      TARGET="$(pick "$(quota_label)" sessions "$SESSION_PREVIEW" \
        --bind 'esc:ignore,ctrl-c:ignore' \
        --bind "ctrl-x:execute('$SELF' kill-session {1})+reload('$SELF' list-sessions)" \
        --bind "load:transform-border-label('$SELF' quota-label)")"
      [[ -n "$TARGET" ]] && tmux switch-client -t "=$TARGET"
    done
    ;;
  *)
    echo "usage: picker.sh [sessions|switch|windows|home]" >&2
    exit 1
    ;;
esac

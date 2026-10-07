# 🪟 TMUX Configuration

A **TMUX** setup tuned for **Ghostty**: a full-screen session dashboard (`home`), lazygit-style pickers with live preview, Claude Code awareness, and sessions that survive a reboot.

---

## 🛠️ Installation

```bash
ln -sf ~/Developer/me/terminal-setup/tmux/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Inside tmux, press `Ctrl + a` then `I` to install the plugins ([tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect) and [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)).

Dependencies: `fzf` (pickers and `home`), `jq` (Claude notifications), `lazygit` (optional popup).

The `tm` function in `zsh/zshrc` opens the `home` dashboard; `tm <name>` attaches to (or creates) a session directly.

---

## 🏠 Home Dashboard

`home` is a dedicated session running `picker.sh home` full screen: sessions on the left, a live preview of the selected one on the right (refreshes every second, every split shown).

Each row shows the session name, Claude Code state (`⚙ trabalhando`, `● esperando você`, or the running program), context used (`ctx 162.7k`), window count, and listening ports (`:3000`). The border shows the Claude usage quota.

| Key | Action |
| --- | --- |
| `Enter` | Switch to the selected session |
| `Ctrl + x` | Kill the selected session (asks `[s/N]`) |
| `Ctrl + r` | Refresh now (it also refreshes every 3s) |
| `Ctrl + a` then `H` | Go back to `home` from anywhere |

---

## ⚡ Keybindings

Primary prefix: **`Ctrl + a`**

### Sessions & Windows

| Shortcut | Action |
| --- | --- |
| `Ctrl + a` then `s` | Session picker (popup); `Enter` switches |
| `Ctrl + a` then `p` | Session picker (popup); `Enter` peeks in a popup |
| `Ctrl + a` then `w` | Window picker (popup); `Enter` peeks in a popup |
| `Ctrl + a` then `S` / `g` | New session (asks for a name; switches if it exists) |
| `Ctrl + a` then `L` | Back to the last session |
| `Ctrl + a` then `A` | Pin the current window |
| `Ctrl + a` then `a` | Open the pinned window in a popup |
| `Ctrl + a` then `c` | New window in the current path |
| `Ctrl + a` then `,` | Rename window |
| `Ctrl + a` then `n` | Next window |
| `Ctrl + Shift + Left/Right` | Move window left/right |

### Panes

| Shortcut | Action |
| --- | --- |
| `Ctrl + a` then `\` | Split side by side |
| `Ctrl + a` then `-` | Split top/bottom |
| `Ctrl + a` then `h/j/k/l` or arrows | Move between panes (`Alt + arrows` without prefix) |
| `Ctrl + a` then `q` | Show pane numbers (3s); press a number to jump |
| `Ctrl + a` then `x` | Close pane |
| `Ctrl + a` then `e` | Close every other pane |

### Tools

| Shortcut | Action |
| --- | --- |
| `Ctrl + a` then `y` | Claude Code in a popup (one session per directory) |
| `Ctrl + a` then `G` | lazygit in a popup |
| `Ctrl + a` then `o` | Open the current path in Finder |
| `Ctrl + a` then `Ctrl + s` / `Ctrl + r` | Save / restore sessions (auto-saved every 15 min) |
| `Ctrl + a` then `r` | Reload config |

---

## 🔔 Claude Code Notifications

`claude-notify.sh` is a Claude Code `Notification` hook. Add it to `~/.claude/settings.json`:

```json
{
  "hooks": {
    "Notification": [
      { "hooks": [{ "type": "command", "command": "bash ~/Developer/me/terminal-setup/tmux/claude-notify.sh", "timeout": 5 }] }
    ]
  }
}
```

When a Claude session needs you:
- Ghostty shows a desktop notification titled with the session name (`[rdp] ...`).
- If you are not looking at that session, a yellow `● rdp` badge appears in the status bar until you enter it.

---

## 📋 Copy Mode

1. `Ctrl + a` then `[` to enter copy mode.
2. `v` to start selecting, `y` to copy to the system clipboard (`pbcopy`, `clip.exe` or `xclip`).

---

## 🎨 Interface

- Gruvbox status bar on top; 24-bit color for `xterm-256color` and `xterm-ghostty`.
- Closing the last pane of a session moves you to another session instead of detaching.
- Mouse enabled; passthrough on so OSC notifications reach Ghostty.

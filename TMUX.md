# 🪟 TMUX Setup (Ghostty Edition)

A self-contained **TMUX** configuration focused on high performance, ergonomics, and seamless compatibility with the **Ghostty** terminal, requiring zero third-party plugin downloads or network connectivity.

---

## ⚡ Quick Keybindings Reference

The primary prefix key is **`Ctrl + a`**.

### 1. Pane Management

| Shortcut | Action |
| --- | --- |
| `Ctrl + a` then `\` | Split window vertically (side-by-side), preserving current path |
| `Ctrl + a` then `-` | Split window horizontally (top/bottom), preserving current path |
| `Ctrl + a` then `h` | Focus pane to the **left** |
| `Ctrl + a` then `j` | Focus pane **below** |
| `Ctrl + a` then `k` | Focus pane **above** |
| `Ctrl + a` then `l` | Focus pane to the **right** |

### 2. Window & Session Management

| Shortcut | Action |
| --- | --- |
| `Ctrl + a` then `c` | Create a new window in current path |
| `Ctrl + a` then `1`..`9` | Switch to corresponding window number |
| `Ctrl + a` then `r` | Reload configuration from `~/.tmux.conf` |

---

## 📋 Copy Mode & System Clipboard (Vi-Mode)

Copy and navigation modes use standard **Vim** keybindings:

1. Press **`Ctrl + a` + `[`** to enter copy/scroll mode.
2. Navigate using `h`, `j`, `k`, `l` (or mouse wheel).
3. Press **`v`** to start visual text selection.
4. Press **`y`** to yank selected text directly into the host system clipboard.

> **Automatic OS Clipboard Integration:**
> - **macOS:** Pipes copied selection to `pbcopy`.
> - **Windows (WSL2):** Pipes copied selection to `clip.exe`.
> - **Linux:** Pipes copied selection to `xclip`.

---

## 🎨 Interface & Styling (Tokyo Night)

- **24-bit TrueColor Support:** Enabled for crisp color rendering in Ghostty (`COLORTERM=truecolor`).
- **Top Status Bar:** Displays active session name on the left, open window list in the center, and date, time, and hostname on the right.
- **Mouse Support:** Fully enabled (click to switch panes, drag to resize, wheel to scroll history).

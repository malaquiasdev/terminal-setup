# 🪟 TMUX Configuration

A self-contained **TMUX** configuration focused on high performance, ergonomics, and seamless compatibility with the **Ghostty** terminal, requiring zero third-party plugin downloads or network connectivity.

---

## 🛠️ Installation

```bash
ln -sf ~/terminal-setup/tmux/tmux.conf ~/.tmux.conf
```

---

## ⚡ Quick Keybindings Reference

Primary Prefix: **`Ctrl + a`**

### 1. Window & Session Management

| Shortcut | Action |
| --- | --- |
| `Ctrl + a` then `c` | Create a new window (tab) in current directory path |
| `Ctrl + a` then `w` | Open floating **Preview Popup** window picker (peek & select window without leaving current view) |
| `Ctrl + a` then `p` | Open floating **Preview Popup** session picker (peek & select session) |
| `Ctrl + a` then `,` | Rename the active window |
| `Ctrl + a` then `1`..`9` | Switch directly to window number `1`..`9` |
| `Ctrl + a` then `n` | Switch to **next** window |
| `Ctrl + Shift + Left` | Move active window tab to the **left** |
| `Ctrl + Shift + Right` | Move active window tab to the **right** |
| `Ctrl + a` then `&` | Close current window |

### 2. Pane Management (Splits)

| Shortcut | Action |
| --- | --- |
| `Ctrl + a` then `\` | Split window vertically (side-by-side), preserving current path |
| `Ctrl + a` then `-` | Split window horizontally (top/bottom), preserving current path |
| `Ctrl + a` then `h` | Focus pane to the **left** |
| `Ctrl + a` then `j` | Focus pane **below** |
| `Ctrl + a` then `k` | Focus pane **above** |
| `Ctrl + a` then `l` | Focus pane to the **right** |
| `Ctrl + a` then `r` | Reload configuration from `~/.tmux.conf` |

---

## 🔍 Preview Popup Details

Pressing **`Ctrl + a` + `w`** or **`Ctrl + a` + `p`** opens a floating popup centered on your screen (`90% width/height`):
- It renders a live scrollable preview of the selected session/window before switching.
- Navigate the picker using `j` / `k` or arrow keys.
- Press **`Enter`** to attach/switch to the target window/session.
- Uses a grouped session (`_preview_PID`) under the hood so detaching or closing the popup doesn't disturb your current client workspace.

---

## 📋 Copy Mode & System Clipboard (Vi-Mode)

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

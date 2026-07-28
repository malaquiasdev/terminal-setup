# ⌨️ Vim / Neovim Configuration

A zero-external-dependency, self-contained configuration for **Vim 8+** and **Neovim**.

---

## 🛠️ Installation

```bash
ln -sf ~/terminal-setup/vim/vimrc ~/.vimrc
```

---

## ✨ Features & Settings

- **Leader Key:** Space (`<Space>`).
- **File Search (`:find`):** Project-wide file search via `<Space> + f + f` with tab auto-completion.
- **Text Search (`ripgrep` / `:grep`):** High-speed project text search via `<Space> + f + g` or cursor word search via `<Space> + f + w`.
- **File Explorer:** Built-in `netrw` file tree toggled via `<Space> + e`.
- **Navigation:** Ergonomic window switching using `<Space> + h/j/k/l` or `Ctrl + h/j/k/l`.
- **Theme:** Offline Tokyo Night theme (`colorscheme tokyonight`).
- **Formatting:** Automatic trailing whitespace cleanup on buffer save.
- **Statusline:** Pure Vim Lisp status bar with Git branch detection, line/column counter, and file type.

---

## ⌨️ Keybindings

### 1. File & Text Search

| Keybinding | Action |
| --- | --- |
| `<Space> + ff` | Open `:find` prompt to search file by name (Press `<Tab>` to autocomplete) |
| `<Space> + fg` | Open `:grep!` prompt to search text across the project (uses `ripgrep` if installed) |
| `<Space> + fw` | Search word under cursor across all project files |
| `<Space> + co` | Open Quickfix list window showing grep results |
| `<Space> + cc` | Close Quickfix list window |
| `<Space> + cn` | Jump to **next** grep result match |
| `<Space> + cp` | Jump to **previous** grep result match |

### 2. Window & Buffer Management

| Keybinding | Action |
| --- | --- |
| `<Space> + e` | Toggle Netrw file explorer tree |
| `<Space> + h` | Focus window to the **left** (e.g. back to Netrw) |
| `<Space> + l` | Focus window to the **right** (e.g. code buffer) |
| `<Space> + j` | Focus window **below** |
| `<Space> + k` | Focus window **above** |
| `<Space> + ch` | Clear search highlights |
| `<Space> + sv` | Split window vertically |
| `<Space> + sh` | Split window horizontally |
| `<Space> + w` | Save current file |
| `<Space> + q` | Quit current buffer |

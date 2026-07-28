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
- **File Explorer:** Built-in `netrw` file tree toggled via `<Leader>e` (`Space + e`).
- **Navigation:** Ergonomic window switching using `Ctrl + h/j/k/l`.
- **Formatting:** Automatic trailing whitespace cleanup on buffer save.
- **Statusline:** Pure Vim Lisp status bar with Git branch detection, line/column counter, and file type.

---

## ⌨️ Keybindings

| Keybinding | Action |
| --- | --- |
| `<Space> + e` | Toggle Netrw file explorer tree |
| `<Space> + h` | Clear search highlights |
| `<Space> + sv` | Split window vertically |
| `<Space> + sh` | Split window horizontally |
| `<Space> + w` | Save current file |
| `<Space> + q` | Quit current buffer |
| `Ctrl + h/j/k/l` | Navigate between split windows |

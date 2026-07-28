# ⌨️ Vim / Neovim Configuration (Gruvbox Edition)

A zero-external-dependency, self-contained configuration for **Vim 8+** and **Neovim**, pre-configured for modern TypeScript, project searching, and visual Markdown previews.

---

## 🛠️ Installation

```bash
ln -sf ~/terminal-setup/vim/vimrc ~/.vimrc
ln -sf ~/terminal-setup/vim ~/.vim
```

---

## ✨ Features & Settings

- **Leader Key:** Space (`<Space>`).
- **Theme:** Offline **Gruvbox Dark** (`colorscheme gruvbox`) with fallback to Tokyo Night.
- **TypeScript & TSX Support:** Built-in offline syntax highlighting definitions for `.ts` and `.tsx` files.
- **Ergonomic Window Navigation:** Navigate split windows effortlessly using `<Space> + Arrow Keys` or `<Space> + h/j/k/l`.
- **Project File Search:** `<Space> + ff` opens `:find` with recursive path completion (`<Tab>`).
- **Project Text Search (Ripgrep):** `<Space> + fg` (live grep) and `<Space> + fw` (word under cursor).
- **Telescope-Style Quickfix List:** Formatted 3-column aligned layout (`filename │ line:col │ text`), compact 14-line height (`q` to close, `Enter` to jump).
- **Markdown & Mermaid.js Preview:** `<Space> + mp` renders current Markdown & Mermaid.js diagrams live in browser.
- **File Explorer:** Native `netrw` tree sidebar toggled via `<Space> + e`.
- **Formatting:** Automatic trailing whitespace cleanup on save.

---

## ⌨️ Keybindings Reference

### 1. File & Text Search

| Keybinding | Action |
| --- | --- |
| `<Space> + ff` | Search file by name (`:find <Tab>` auto-completes paths) |
| `<Space> + fg` | Live grep text across project (`:grep!` via `ripgrep`) |
| `<Space> + fw` | Search word under cursor across all project files |
| `<Space> + cn` | Jump to **next** search result match |
| `<Space> + cp` | Jump to **previous** search result match |
| `<Space> + co` | Open Quickfix list window (14-line height) |
| `<Space> + cc` | Close Quickfix list window |
| `q` *(inside Quickfix)* | Close Quickfix list window |

### 2. Window & Pane Navigation

| Keybinding | Action |
| --- | --- |
| `<Space> + Up` / `<Space> + k` | Focus window **above** |
| `<Space> + Down` / `<Space> + j` | Focus window **below** |
| `<Space> + Left` / `<Space> + h` | Focus window to the **left** (e.g. back to Netrw) |
| `<Space> + Right` / `<Space> + l` | Focus window to the **right** (e.g. code buffer) |
| `Ctrl + Arrow Keys` | Alternative window navigation |
| `<Space> + sv` | Split window vertically |
| `<Space> + sh` | Split window horizontally |

### 3. Explorer, Tools & File Controls

| Keybinding | Action |
| --- | --- |
| `<Space> + e` | Toggle Netrw file explorer sidebar |
| `<Space> + mp` | Launch Markdown & Mermaid.js live browser preview |
| `<Space> + ch` | Clear search highlights |
| `<Space> + w` | Save current file (`:w`) |
| `<Space> + q` | Quit current buffer (`:q`) |

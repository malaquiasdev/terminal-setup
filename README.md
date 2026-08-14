# 🌌 Terminal Setup — Ghostty + Vim + TMUX (Catppuccin Frappe Edition)

**A high-performance, aesthetically pleasing, zero-dependency development environment optimized for restricted corporate environments, firewalls, and proxy networks.**

---

## 🎨 Aesthetics & Stack

- **Theme:** [Catppuccin Frappe](https://github.com/catppuccin/catppuccin) — Soft pastel palette designed for high legibility during long coding sessions (falls back to Gruvbox Dark, then Tokyo Night, if unavailable).
- **Font:** [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads) (Size 15) with fallback monospace fonts.
- **Terminal:** [Ghostty](https://github.com/ghostty-org/ghostty) with 24-bit TrueColor support (`COLORTERM=truecolor`).
- **Multiplexer:** TMUX (Standalone, zero-TPM runtime dependency).
- **Editor:** Vim 8+ / Neovim (Pure Vim config, offline themes & TypeScript support).
- **Shell:** ZSH (Native `compinit` autocomplete, autosuggestions, syntax-highlighting & proxy helpers).

---

## 📂 Modular Repository Architecture

Each tool is isolated in its dedicated directory containing configuration files and individual documentation:

```text
.
├── ghostty/
│   ├── config        # Native Ghostty configuration (Gruvbox Dark)
│   └── README.md     # Ghostty documentation & keybindings
├── tmux/
│   ├── tmux.conf     # Standalone TMUX configuration (Gruvbox status bar)
│   ├── preview.sh    # Floating preview popup script
│   └── README.md     # TMUX keybindings & preview popup guide
├── vim/
│   ├── vimrc         # Pure Vim/Neovim configuration
│   ├── colors/       # Vendored offline themes (Gruvbox Dark, Tokyo Night)
│   ├── syntax/       # Offline TypeScript & TSX syntax definitions
│   └── README.md     # Vim keybindings & search guide
├── zsh/
│   ├── zshrc         # Resilient ZSH shell config & proxy helpers
│   ├── mdpreview     # Markdown & Mermaid.js browser previewer script
│   └── README.md     # ZSH documentation & functions
└── README.md         # Repository root overview
```

---

## 🚀 Quick Start & Installation

### 1. Clone & Link Configurations

```bash
git clone https://github.com/malaquiasdev/terminal-setup.git ~/terminal-setup
cd ~/terminal-setup

# Link application configurations
ln -sf ~/terminal-setup/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/terminal-setup/vim/vimrc ~/.vimrc
ln -sf ~/terminal-setup/zsh/zshrc ~/.zshrc
ln -sf ~/terminal-setup/vim ~/.vim

# Link local binary scripts
mkdir -p ~/.local/bin
ln -sf ~/terminal-setup/zsh/mdpreview ~/.local/bin/mdpreview

# Link Ghostty configuration (if Ghostty is installed)
mkdir -p ~/.config/ghostty
ln -sf ~/terminal-setup/ghostty/config ~/.config/ghostty/config
```

---

## ⌨️ Key Features & Shortcuts

### 🪟 TMUX (Prefix: `Ctrl + a`)
- **Panes:** `Ctrl+a \` (vertical split), `Ctrl+a -` (horizontal split), `Ctrl+a` + `Arrow Keys` or `h/j/k/l`.
- **Preview Popups:** `Ctrl+a w` (floating window preview picker), `Ctrl+a p` (floating session preview picker).
- **Clipboard:** Automatic OS clipboard integration (`pbcopy` on macOS, `clip.exe` on WSL2, `xclip` on Linux).

### ⌨️ Vim / Neovim (Leader: `<Space>`)
- **Navigation:** `<Space>` + `Arrow Keys` or `<Space> + h/j/k/l` to switch windows.
- **File Explorer:** `<Space> e` to toggle Netrw file tree.
- **File Search:** `<Space> ff` to search files by name (`:find <Tab>`).
- **Text Search (Ripgrep):** `<Space> fg` to live grep project text, `<Space> fw` to grep word under cursor.
- **Telescope-Style Quickfix:** Aligned, clean search results list with automatic 14-line height (`q` to close).
- **Markdown Preview:** `<Space> mp` to preview the current file's rendered Markdown & Mermaid.js diagrams in the browser. Inside an OpenSpec change (a directory with `.openspec.yaml` or `proposal.md`), it combines every `.md` in the change (`proposal.md` → `design.md` → `specs/**/*.md` → `tasks.md` → others) into one page with a sidebar table of contents, reusing the same browser tab instead of opening a new one per file.

### 🐚 ZSH Shell & Proxy Helpers
- **Corporate Proxy:** `setproxy <url>`, `showproxy`, `unsetproxy`.
- **Smart Launcher:** `tm` (creates or attaches to TMUX session).
- **Markdown Previewer:** `mdpreview <file.md|dir>` (renders Markdown + Mermaid.js in browser; auto-combines an OpenSpec change's files into one page and reuses the existing browser tab).

---

## 📖 Component Documentation

- 👻 [Ghostty Setup Guide](ghostty/README.md)
- 🪟 [TMUX & Preview Popup Guide](tmux/README.md)
- ⌨️ [Vim & Search Keybindings Guide](vim/README.md)
- 🐚 [ZSH & Proxy Helper Guide](zsh/README.md)

---
*Maintained with ❤️ by [malaquiasdev](https://github.com/malaquiasdev) • Branch: `main`*

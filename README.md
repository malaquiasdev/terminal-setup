# 🌌 Terminal Setup 2026

**A high-performance, aesthetically pleasing development environment.**  
Inspired by [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public), optimized for 2026 workflows.

---

## 🎨 Aesthetics & Interface

- **Theme:** [Tokyo Night (Night variant)](https://github.com/folke/tokyonight.nvim) — Deep blues and vibrant neon accents for maximum focus.
- **Font:** [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads) — Size 16, with ligatures and Powerline glyphs enabled.
- **Terminal:** iTerm2 with 24-bit TrueColor support (`COLORTERM=truecolor`).

## 🐚 Shell (Zsh + Powerlevel10k)

Managed via **Oh My Zsh**, featuring:
- **Prompt:** [Powerlevel10k](https://github.com/romkatv/powerlevel10k) (Instant Prompt enabled & optimized).
- **Navigation:** [Zoxide](https://github.com/ajeetdsouza/zoxide) (`z` instead of `cd`).
- **Modern CLI Tools:**
  - `eza` (Better `ls` with icons).
  - `bat` (Better `cat` with syntax highlighting).
  - `ripgrep` (`rg`) & `fd` for ultra-fast searching.
  - `fzf` for fuzzy finding.
  - `lazygit` for terminal-based Git TUI.

## 🪟 TMUX (Modular Configuration)

Located in `~/.config/tmux/` for better organization:
- **Prefix:** `Ctrl + a` (Classic & ergonomic).
- **UX:** Window/Pane numbering starts at **1**.
- **Mouse:** Fully enabled with **macOS Clipboard integration** (`pbcopy`).
- **Layouts:** Standardized splits with `|` and `-`.
- **Popups:** `Prefix + g` opens **LazyGit** in a floating window.

## ⌨️ Neovim (LazyVim / Craftzdog Style)

A modern, Lua-based IDE experience:
- **Plugin Manager:** `lazy.nvim`.
- **Theme:** Tokyo Night (Transparent background).
- **LSP/Treesitter:** Pre-configured for Go, Node.js, and Cloud-native development.

---

## 🚀 Quick Start (macOS)

### 1. Requirements
```bash
# Core Tools
brew install iterm2 git zsh tmux neovim zoxide eza bat ripgrep fd fzf lazygit

# Font (Crucial for icons)
brew install --cask font-jetbrains-mono-nerd-font
```

### 2. Installation (Dotfiles)
Clone this repo and link the configurations:
```bash
git clone https://github.com/malaquiasdev/terminal-setup.git ~/terminal-setup
cd ~/terminal-setup

# Link configurations
ln -s ~/terminal-setup/.zshrc ~/.zshrc
ln -s ~/terminal-setup/.tmux.conf ~/.tmux.conf
mkdir -p ~/.config
ln -s ~/terminal-setup/.config/tmux ~/.config/tmux
ln -s ~/terminal-setup/.config/nvim ~/.config/nvim
```

### 3. Apply Theme
- **iTerm2:** Go to `Settings -> Profiles -> Other Actions -> Import JSON` and select `iterm.json`.
- **Tmux:** Press `Prefix + I` to install plugins via TPM.

---

## ⌨️ Key Aliases

| Alias | Command |
| --- | --- |
| `vi` / `vim` | `nvim` |
| `ls` | `eza --icons` |
| `cd` | `z` |
| `kgs` / `kgp` | `kubectl get svc/pods` |

---
*Maintained with ❤️ by [malaquiasdev](https://github.com/malaquiasdev)*

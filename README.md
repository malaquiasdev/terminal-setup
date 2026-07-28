# 👻 Ghostty + Vim + TMUX Setup (Restricted Environment Edition)

**A lightweight, zero-external-dependency terminal setup optimized for restricted corporate environments, firewalls, and proxy networks.**

---

## 🔒 Designed for Restricted Environments
- **Zero Online Plugin Dependencies:** TMUX and Vim function completely out-of-the-box without needing `git clone` or online plugin managers (TPM / lazy.nvim) during runtime.
- **Proxy Aware:** Pre-built Zsh helper functions (`setproxy`, `unsetproxy`, `showproxy`).
- **Tool Fallbacks:** Graceful degradation if modern CLI tools (`eza`, `bat`, `ripgrep`, `nvim`) cannot be installed due to lack of admin permissions.

---

## 🛠️ Stack Overview

| Component | Target Tool | Configuration Path | Notes |
| --- | --- | --- | --- |
| **Terminal** | [Ghostty](https://github.com/ghostty-org/ghostty) | `.config/ghostty/config` | TokyoNight theme, TrueColor, JetBrainsMono font |
| **Editor** | Vim / Neovim | `.vimrc` | Native statusline, netrw explorer, vi keybindings |
| **Multiplexer** | TMUX | `.config/tmux/tmux.conf` | `Ctrl+a` prefix, TokyoNight status bar, OS clipboard |
| **Shell** | ZSH | `.zshrc` | Proxy management, user-space `$PATH`, resilience fallbacks |

---

## 🚀 Quick Setup

### 1. Link Configurations
```bash
cd ~/terminal-setup

# Create required directory structure
mkdir -p ~/.config/ghostty ~/.config/tmux

# Symlink dotfiles
ln -sf ~/terminal-setup/.config/ghostty/config ~/.config/ghostty/config
ln -sf ~/terminal-setup/.config/tmux/tmux.conf ~/.config/tmux/tmux.conf
ln -sf ~/terminal-setup/.tmux.conf ~/.tmux.conf
ln -sf ~/terminal-setup/.vimrc ~/.vimrc
ln -sf ~/terminal-setup/.zshrc ~/.zshrc
```

### 2. Corporate Proxy Management (Zsh)
Configure network proxies on demand:
```bash
setproxy http://proxy.company.com:8080
showproxy
unsetproxy
```

---
*Branch: `ghostty-vim-tmux`*

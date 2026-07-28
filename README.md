# 👻 Ghostty + Vim + TMUX Setup (Restricted Environment Edition)

**A lightweight, zero-external-dependency terminal setup optimized for restricted corporate environments, firewalls, and proxy networks.**

---

## 🔒 Designed for Restricted Environments
- **Zero Online Plugin Dependencies:** TMUX and Vim function completely out-of-the-box without needing `git clone` or online plugin managers (TPM / lazy.nvim) during runtime.
- **No Directory Prerequisites:** `.tmux.conf`, `.vimrc`, and `.zshrc` work directly out of the root without requiring pre-created `~/.config/tmux` directories.
- **Proxy Aware:** Pre-built Zsh helper functions (`setproxy`, `unsetproxy`, `showproxy`).
- **Tool Fallbacks:** Graceful degradation if modern CLI tools (`eza`, `bat`, `ripgrep`, `nvim`) cannot be installed due to lack of admin permissions.

---

## 🛠️ Stack Overview

| Component | Target Tool | Configuration Path | Notes |
| --- | --- | --- | --- |
| **Terminal** | [Ghostty](https://github.com/ghostty-org/ghostty) | `.config/ghostty/config` | TokyoNight theme, TrueColor, JetBrainsMono font |
| **Editor** | Vim / Neovim | `.vimrc` | Native statusline, netrw explorer, vi keybindings |
| **Multiplexer** | TMUX | `.tmux.conf` | `Ctrl+a` prefix, TokyoNight status bar, OS clipboard |
| **Shell** | ZSH | `.zshrc` | Proxy management, user-space `$PATH`, resilience fallbacks |

---

## 🚀 Quick Setup

### 1. Link Configurations
```bash
cd ~/terminal-setup

# Simple standalone symlinks (No ~/.config/tmux required!)
ln -sf ~/terminal-setup/.tmux.conf ~/.tmux.conf
ln -sf ~/terminal-setup/.vimrc ~/.vimrc
ln -sf ~/terminal-setup/.zshrc ~/.zshrc

# Ghostty configuration (if Ghostty is installed)
mkdir -p ~/.config/ghostty
ln -sf ~/terminal-setup/.config/ghostty/config ~/.config/ghostty/config
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

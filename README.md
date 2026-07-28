# 👻 Ghostty + Vim + TMUX + ZSH Setup (Modular Edition)

**A modular, zero-external-dependency terminal setup organized by application for restricted corporate environments, firewalls, and proxy networks.**

---

## 📂 Repository Structure

Each application is self-contained within its own subfolder, containing its specific configuration file and documentation:

```text
.
├── ghostty/
│   ├── config        # Native Ghostty configuration
│   └── README.md     # Ghostty documentation & keybindings
├── tmux/
│   ├── tmux.conf     # Standalone TMUX configuration
│   └── README.md     # TMUX documentation & keybindings
├── vim/
│   ├── vimrc         # Self-contained Vim / Neovim configuration
│   └── README.md     # Vim documentation & keybindings
├── zsh/
│   ├── zshrc         # Resilient ZSH shell configuration & proxy helpers
│   └── README.md     # ZSH documentation & functions
└── README.md         # Repository root overview
```

---

## 🚀 Quick Setup

To install all components on a new machine, clone the repository and create the symlinks:

```bash
git clone -b ghostty-vim-tmux https://github.com/malaquiasdev/terminal-setup.git ~/terminal-setup
cd ~/terminal-setup

# Link application configurations
ln -sf ~/terminal-setup/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/terminal-setup/vim/vimrc ~/.vimrc
ln -sf ~/terminal-setup/zsh/zshrc ~/.zshrc

# Ghostty configuration (if Ghostty is installed)
mkdir -p ~/.config/ghostty
ln -sf ~/terminal-setup/ghostty/config ~/.config/ghostty/config
```

---

## 📖 Component Documentation

- 👻 [Ghostty Config & Setup](ghostty/README.md)
- 🪟 [TMUX Config & Keybindings](tmux/README.md)
- ⌨️ [Vim Config & Keybindings](vim/README.md)
- 🐚 [ZSH Config & Proxy Helpers](zsh/README.md)

---
*Branch: `ghostty-vim-tmux`*

# Terminal Setup

**Note:** These are primarily meant for inspiration. I wouldn't just blindly use them. Proceed at your own risk!

My personal terminal setup

## MacOS Terminal Setup

### Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### iTerm2

```bash
brew install --cask iterm2
```

### Git

```bash
brew install git
```

### XCode Command Line Tools

```bash
xcode-select --install
```

### zsh

```bash
brew install zsh
```

#### Install ZSH Plugins

zsh-autosuggestions:

```bash
brew install zsh-autosuggestions
```

zsh-syntax-highlighting:

```bash
brew install zsh-syntax-highlighting
```

### Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### PowerLevel10K Theme

Install:

```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

Update ZSH_THEME:

```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Reload:

```bash
source ~/.zshrc
```

Meslo Nerd Font:

```bash
brew install --cask font-meslo-for-powerlevel10k
```

Configure PowerLevel10K:

```bash
p10k configure
```

### Plugins

- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf.git)
- [fd](https://github.com/sharkdp/fd)
- [fzf-git](https://github.com/junegunn/fzf-git.sh)
- [bat](https://github.com/sharkdp/bat)
- [delta](https://github.com/dandavison/delta)
- [eza](https://github.com/eza-community/eza.git)
- [tldr](https://github.com/tldr-pages/tldr)
- [thefuck](https://github.com/nvbn/thefuck)

```bash
brew install ripgrep && brew install fzf && brew install fd && brew install bat && brew install eza && brew install tldr && brew install thefuck
```

### Import Iterm2 Profile

Go to Settings -> Profiles -> Other Actions -> Import JSON Profiles

## TMUX

Install:

```bash
brew install tmux
```

Install tpm (tmux plugin manager):

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Copy Configuration File

- [.tmux.conf](.tmux.conf)

## Neovim Setup

**Note:** This is my latest config with lazy.nvim.

- [.config/nvim](.config/nvim)

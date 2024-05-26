# nvim-config

My personal Neovim configuration

## Alpine Linux Setup [ish.app](https://ish.app)

The iSH's default package repository is kind of outdated.
So, let's use the Alpine's official edge repository.

### Upgrade the packages:
```bash
echo https://dl-cdn.alpinelinux.org/alpine/edge/main > /etc/apk/repositories
echo https://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
apk update
apk upgrade
```

### Zsh:
```bash
apk add zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### Nerd font:
```bash
apk add nerd-fonts
```

### Ripgrep:
```bash
apk add ripgrep
```

### Nodejs:
```bash
apk add nodejs 
```

### GoLang:
```bash
apk add go
```

### Terraform:
```bash
apk add terraform
```

### Fuzzy finder:
```bash
apk add fzf
```

### Neovim:
```bash
apk add neovim
```

### Fix telescope know issue:
```bash 
cd ~/.local/share/nvim/lazy/telescope-fzf-native.nvim && make && cd -
```

## MacOS Setup

- True Color Terminal Like: [iTerm2](https://iterm2.com/)
- [Neovim](https://neovim.io/) (Version 0.9 or Later)
- [Nerd Font](https://www.nerdfonts.com/) - I use Meslo Nerd Font
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder
- XCode Command Line Tools
- If working with typescript/javascript and the typescript language server like me. You might need to install node/npm.

If you're on mac, like me, you can install iTerm2, Neovim, Meslo Nerd Font, Ripgrep and Node with homebrew.

iTerm2:

```bash
brew install --cask iterm2
```

Nerd font:

```bash
brew tap homebrew/cask-fonts
brew install font-meslo-lg-nerd-font
```

Neovim:

```bash
brew install neovim
```

Ripgrep:

```bash
brew install ripgrep
```

Node/Npm:

```bash
brew install node
```

For XCode Command Line Tools do:

```bash
xcode-select --install
```

## Terminal Alias

```
alias vim=nvim
alias kdp="kubectl describe pod"
alias kgs="kubectl get svc"
alias kgp="kubectl get pods"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gp="git fetch -p && git pull"
alias gm="git merge"
alias gr="git rebase"
alias gb="git branch"
alias gs="git stash"
alias ga="git add"
alias gps= "git push"
```

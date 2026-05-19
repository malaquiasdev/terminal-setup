# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Tema
ZSH_THEME="bira"

# Plugins (Garanta que clonou os externos - veja comandos abaixo)
plugins=(
  git
  web-search
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Smart tmux session manager
function tm() {
  if [[ -z "$1" ]]; then
    tmux attach 2>/dev/null || tmux
  else
    tmux attach -t "$1" 2>/dev/null || tmux new -s "$1"
  fi
}

## History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

## Bindkeys
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

## Aliases
# Só usa o eza se ele estiver instalado, senão volta pro ls padrão
if command -v eza &> /dev/null; then
    alias ls="eza --icons=always"
else
    alias ls="ls --color=auto"
fi

alias vim=nvim
alias vi=nvim
alias kdp="kubectl describe pod"
alias kgs="kubectl get svc"
alias kgp="kubectl get pods"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gp="git fetch -p && git pull"
alias gps="git push"

## NVM (Node)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

## Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

## Antigravity & Local Bins
export PATH="$HOME/.antigravity/antigravity/bin:$HOME/.local/bin:$PATH"

## Go Path (Consertado para Linux)
export PATH=$PATH:$(go env GOPATH)/bin
export COLORTERM=truecolor

# AWS Profile Auto-Switch (Atualizado para caminhos de Linux)
function aws_profile_autoswitch() {
  if [[ "$PWD" == "$HOME/Developer/rdsplus"* ]]; then
    if [[ "$AWS_PROFILE" != "rdplus-dev" ]]; then
      export AWS_PROFILE=rdplus-dev
      echo "AWS Profile: rdplus-dev (Auto)"
    fi
  elif [[ "$PWD" == "$HOME/Developer/me"* ]]; then
    if [[ "$AWS_PROFILE" != "malaquiasdev" ]]; then
      export AWS_PROFILE=malaquiasdev
      echo "AWS Profile: malaquiasdev (Auto)"
    fi
  elif [[ -n "$AWS_PROFILE" ]]; then
    unset AWS_PROFILE
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd aws_profile_autoswitch
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/malaquiasdev/.bun/_bun" ] && source "/home/malaquiasdev/.bun/_bun"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


alias claude="$HOME/.local/bin/claude"

## ---- Zoxide (Melhor que cd) ----
# Deve ser o ÚLTIMO item do arquivo (zoxide exige isso)
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
    alias cd="z"
fi
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  web-search
  tmux
#  last-working-dir
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

# User configuration

## history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

## completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

## ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

## Set personal aliases, overriding those provided by oh-my-zsh libs,
alias cd="z"
alias ls="eza --icons=always"
alias vim=nvim
alias vi=nvim
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
alias gps="git push"
alias tls="tmux ls"
alias tk="tmux kill-session -t"
alias claude-pessoal="claude auth logout && claude auth login --email malaquias@rdplus.com.br"
alias claude-pbsf="claude auth logout && claude auth login --email mateus.malaquias@pbsf.com.br"


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/mateusmalaquias/.bun/_bun" ] && source "/Users/mateusmalaquias/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by Antigravity
export PATH="/Users/mateusmalaquias/.antigravity/antigravity/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH=/Users/mateusmalaquias/.opencode/bin:$PATH

# AWS Profile Auto-Switch
function aws_profile_autoswitch() {
  if [[ "$PWD" == "/Users/mateusmalaquias/Developer/rdsplus"* ]]; then
    if [[ "$AWS_PROFILE" != "rdplus-dev" ]]; then
      export AWS_PROFILE=rdplus-dev
      [[ -n "$ZSH_NAME" && -n "$PS1" ]] && echo "AWS Profile: rdplus-dev (Auto)"
    fi
  elif [[ "$PWD" == "/Users/mateusmalaquias/Developer/me"* ]]; then
    if [[ "$AWS_PROFILE" != "malaquiasdev" ]]; then
      export AWS_PROFILE=malaquiasdev
      [[ -n "$ZSH_NAME" && -n "$PS1" ]] && echo "AWS Profile: malaquiasdev (Auto)"
    fi
  elif [[ -n "$AWS_PROFILE" ]]; then
    unset AWS_PROFILE
    [[ -n "$ZSH_NAME" && -n "$PS1" ]] && echo "AWS Profile: unset (Auto)"
  fi
}

# Claude Account Hint
function claude_account_hint() {
  if [[ "$PWD" == "/Users/mateusmalaquias/Developer/pbsf"* ]]; then
    if [[ "$CLAUDE_EXPECTED_ACCOUNT" != "pbsf" ]]; then
      export CLAUDE_EXPECTED_ACCOUNT="pbsf"
      [[ -n "$PS1" ]] && echo "Claude: use 'claude-pbsf' para logar com mateus.malaquias@pbsf.com.br"
    fi
  elif [[ "$PWD" == "/Users/mateusmalaquias/Developer/me"* ]] ||
       [[ "$PWD" == "/Users/mateusmalaquias/Developer/rdsplus"* ]] ||
       [[ "$PWD" == "/Users/mateusmalaquias/Developer/ekoa"* ]] ||
       [[ "$PWD" == "/Users/mateusmalaquias/Developer/gl"* ]] ||
       [[ "$PWD" == "/Users/mateusmalaquias/Developer/srs"* ]]; then
    if [[ "$CLAUDE_EXPECTED_ACCOUNT" != "pessoal" ]]; then
      export CLAUDE_EXPECTED_ACCOUNT="pessoal"
      [[ -n "$PS1" ]] && echo "Claude: use 'claude-pessoal' para logar com malaquias@rdplus.com.br"
    fi
  elif [[ -n "$CLAUDE_EXPECTED_ACCOUNT" ]]; then
    unset CLAUDE_EXPECTED_ACCOUNT
  fi
}

# Add to zsh hooks
autoload -Uz add-zsh-hook
add-zsh-hook chpwd aws_profile_autoswitch
add-zsh-hook chpwd claude_account_hint

# Run once on startup (silenced to keep Powerlevel10k instant prompt clean)
aws_profile_autoswitch > /dev/null 2>&1
claude_account_hint > /dev/null 2>&1

export PATH=$PATH:$(go env GOPATH)/bin
export COLORTERM=truecolor

. "$HOME/.cargo/env"

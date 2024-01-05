# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set ozh theme to load.
ZSH_THEME="sunrise"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm.dd.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vi-mode ssh-agent git github colorize copypath copyfile cp extract history web-search pip pyenv python vagrant docker gitignore themes)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$PATH:$HOME/.local/bin"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# Set personal aliases
# For a full list of active aliases, run `alias`.
alias v="nvim"
alias vi="nvim"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias tmx="tmux attach || tmux new"
alias la="ls -lah"
alias k="kubectl"
alias c="bat"

# Googler
alias g='googler -n 7 -c ru -l ru'

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Vault autocomplete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

# kubectl
source <(kubectl completion zsh)
complete -F __start_kubectl k

# zoxide
eval "$(zoxide init zsh)"

# XDG directories
export XDG_CONFIG_HOME="$HOME/.config"

# Ripgrep https://github.com/BurntSushi/ripgrep
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/rc"

eval "$(atuin init zsh)"
eval "$(atuin init zsh)"

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

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases
# For a full list of active aliases, run `alias`.
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias tmx="tmux attach || tmux new"
alias la="ls -la"
# `cat` with beautiful colors. requires: pip install -U Pygments
alias c='pygmentize -O style=monokai -f terminal256 -g'
# Googler
alias g='googler -n 7 -c ru -l ru'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export WORKON_HOME=$HOME/.virtualenvs
if [[ -d $HOME/.pyenv ]];then
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
fi

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export DYLD_LIBRARY_PATH=/usr/local/Cellar/openssl@1.1/1.1.1f/lib

# Vault autocomplete
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

# kubectl
source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k

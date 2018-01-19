# Path to your oh-my-zsh installation.
export ZSH=/home/esv/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sunrise"


# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm.dd.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vi-mode ssh-agent git github colored-man colorize copydir copyfile cp extract history web-search zsh-syntax-highlighting pip pyenv python vagrant docker gitignore themes)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="$PATH:$HOME/.local/bin"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias xmconfig="nvim ~/.xmonad"
alias xcp="xclip -selection clipboard"
alias tmx="tmux attach || tmux new"
# exa:
alias la="exa -abghl --git --color=automatic"
# `cat` with beautiful colors. requires: pip install -U Pygments
alias c='$HOME/.local/bin/pygmentize -O style=solarized256 -f terminal256 -g'
# Googler
alias g='googler -n 7 -c ru -l ru'

export WORKON_HOME=$HOME/.virtualenvs
# pyenv and virtualenvwrapper
if [[ -d $HOME/.pyenv ]];then
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    pyenv virtualenvwrapper_lazy
    source ~/.pyenv/plugins/pyenv-autoenv/bin/pyenv-autoenv
fi

# rbenv
if [[ -d $HOME/.rbenv ]];then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

[[ -s "$HOME/.profile"  ]] && source "$HOME/.profile" # Load the default .profile

# Openstack conf
if [[ -f $HOME/.openrc.sh ]];then
    source ~/.openrc.sh
fi

# RUST
source $HOME/.cargo/env

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# z init
. $HOME/.local/bin/z.sh

## zshrc
# ---

zcompare() {
	if [[ -s ${1} && ( ! -s ${1}.zwc || ${1} -nt ${1}.zwc) ]]; then
		zcompile "${1}"
	fi
}

source "$HOME/.config/bash/exports"
zcompare "${ZDOTDIR:-${HOME}}/.zshrc"
eval "$(sheldon \
	--config-file="$XDG_CONFIG_HOME"/sheldon/plugins.zsh.toml \
	--data-dir="$XDG_DATA_HOME"/sheldon/zsh source)"

#  vim: set ts=2 sw=2 tw=80 noet : zshrc
# ---

zcompare() {
	if [[ -s ${1} && ( ! -s ${1}.zwc || ${1} -nt ${1}.zwc) ]]; then
		zcompile "${1}"
	fi
}

source "$HOME/.config/bash/exports"
zcompare "${ZDOTDIR:-${HOME}}/.zshrc"
eval "$(sheldon \
	--config-file="$XDG_CONFIG_HOME"/sheldon/plugins.zsh.toml \
	--data-dir="$XDG_DATA_HOME"/sheldon/zsh source)"

#  vim: set ts=2 sw=2 tw=80 noet :

# IntelliShell
export INTELLI_HOME=/Users/e.semenov/.local/state/intellishell
# export INTELLI_SEARCH_HOTKEY=\\C-@
# export INTELLI_LABEL_HOTKEY=\\C-l
# export INTELLI_BOOKMARK_HOTKEY=\\C-b
# export INTELLI_SKIP_ESC_BIND=0
alias intelli-shell="'$INTELLI_HOME/bin/intelli-shell'"
source "$INTELLI_HOME/bin/intelli-shell.sh"

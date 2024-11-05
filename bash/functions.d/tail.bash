# tail functions

function tailgrep() {
	local Q="$2"
	: "${Q:="ERROR"}"
	ESC="$(printf '\033')"
	tail -f "$1" | sed "s,$Q,$ESC\[1;31m&$ESC\[0m,g"
}

function tailfzf() {
	# With "follow", preview window will automatically scroll to the bottom.
	fzf --preview-window follow --preview 'tail -f {}'
}

# vim: set ts=2 sw=2 tw=80 noet :

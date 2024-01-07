# Misc functions

function do5() {
	# shellcheck disable=2068
	for _ in {1..5}; do $@; done
}

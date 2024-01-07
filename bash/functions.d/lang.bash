# Go functions
# ---

# Golang - show outdated, indirect dependencies
function go-outdated() {
	go list -u -m -f '{{ if and (not .Indirect) .Update }}{{.}}{{end}}' all
}

# Python - delete all packages in virtualenv
function wipeenv() {
	pip freeze --exclude-editable --require-virtualenv | xargs pip uninstall -y
}

function pip-outdated() {
	pip list --outdated
}


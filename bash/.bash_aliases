alias powershell="powershell.exe"

# Color highlighted cat
alias catc="pygmentize -g"

# Create file and directories if needed
mkfile() {
	mkdir -p $(dirname "$1") && touch "$1"
}



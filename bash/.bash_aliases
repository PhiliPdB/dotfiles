
# Alias for powershell when on WSL
if [[ $WSL_running == true ]]; then
	alias powershell="powershell.exe"
fi

# Color highlighted cat
alias catc="pygmentize -g"

# Create file and directories if needed
mkfile() {
	mkdir -p $(dirname "$1") && touch "$1"
}



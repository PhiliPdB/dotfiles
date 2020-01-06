# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/philipdb/.oh-my-zsh"
export ZSH_CUSTOM="/home/philipdb/dotfiles/zsh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	cabal
	colored-man-pages
	colorize
	git
	gitignore
	sudo
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# GPG Fix
export GPG_TTY=$(tty)



# Check if we are running on WSL
if cat /proc/version | grep Microsoft > /dev/null; then
 	WSL_RUNNING=true
else
	WSL_RUNNING=false
fi
export WSL_RUNNING

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set display when on WSL
if [[ $WSL_RUNNING == true ]]; then
	export DISPLAY=:0.0
fi


# Custom aliasses

# Some ls aliasses
alias ll='ls -lF'
alias la='ls -A'
alias lla='ls -alF'
alias l='ls -CF'

# Create file and directories if needed
mkfile() {
	mkdir -p $(dirname "$1") && touch "$1"
}





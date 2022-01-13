export BASH_SILENCE_DEPRECATION_WARNING=1
eval "$(/opt/homebrew/bin/brew shellenv)"
clear
. .bash_prompt
neofetch
. "$HOME/.cargo/env"

# Path to your oh-my-zsh installation.
export ZSH="/home/opxop/.oh-my-zsh"

ZSH_THEME="typewritten"

# TypwWritten Customization
TYPEWRITTEN_SYMBOL="λ"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	bgnotify
	fast-syntax-highlighting
	zoxide
	zsh-autosuggestions
	zsh-completions
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# global (valid for all machines) aliases
source $HOME/.zprofile
source $HOME/.zshenv

# Created by newuser for 5.4.2
# Linux antigen file
source $HOME/antigen.zsh

# Load oh-my-zsh library.
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh).
antigen bundle git
antigen bundle git-extras
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle lol
antigen bundle npm
antigen bundle nvm

# Load bundles from external repos.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

# Load Themes
antigen theme denysdovhan/spaceship-prompt

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Tell Antigen that you're done.
antigen apply

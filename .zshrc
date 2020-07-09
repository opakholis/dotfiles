# Created by newuser for 5.4.2
# Linux antigen file
source $HOME/antigen.zsh

# Load oh-my-zsh library.
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh).
antigen bundle git
antigen bundle git-extras
antigen bundle heroku
antigen bundle pip
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle lol
antigen bundle npm
antigen bundle nvm
antigen bundle heroku

# Load bundles from external repos.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load Themes
antigen theme denysdovhan/spaceship-prompt

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use

# Load custom aliases
[[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
export PATH="$HOME/.local/bin:$PATH"

# Load setup mobile development
export PATH="$PATH:/opt/android-studio/bin" 
export PATH="$PATH:/opt/flutter/bin"
export PATH="$HOME/Android/tools:$PATH"
export PATH="$HOME/Android/platform-tools:$PATH"

# Tell Antigen that you're done.
antigen apply

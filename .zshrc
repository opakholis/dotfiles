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
antigen bundle supercrabtree/k

# Load bundles from external repos.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

# Select theme.
antigen bundle mafredri/zsh-async
antigen bundle marszall87/lambda-pure

# Tell Antigen that you're done.
antigen apply

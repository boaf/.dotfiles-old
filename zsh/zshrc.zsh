export ZSH=$HOME/.dotfiles

source $ZSH/zsh/{path,aliases,config,prompt}.zsh

autoload -U compinit
compinit

# Completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # case insensitive
zstyle ':completion:*' insert-tab pending # pasted tabs don't complete

unsetopt correct

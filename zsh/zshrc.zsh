export ZSH=$HOME/.dotfiles

. $ZSH/zsh/path.zsh
. $ZSH/zsh/aliases.zsh
. $ZSH/zsh/config.zsh
. $ZSH/zsh/prompt.zsh

autoload -U compinit
compinit

# Completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # case insensitive
zstyle ':completion:*' insert-tab pending # pasted tabs don't complete

unsetopt correct

. $ZSH/tmux/init.sh

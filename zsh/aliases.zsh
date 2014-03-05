alias l="ls"
alias la="l -a"
alias ll="l -lah"

e() { $EDITOR "${1:-.}"; }

reload!() { source $HOME/.zshrc; }

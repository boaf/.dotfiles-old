alias l="ls"
alias la="l -a"
alias ll="l -lah"

alias c="cd .."

alias e='$EDITOR'

reload! () { source $HOME/.zshrc; }

server () {
    port=${1-8080}
    open http://localhost:$port
    python -m SimpleHTTPServer $port
}

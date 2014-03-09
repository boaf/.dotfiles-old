autoload colors && colors

export VIRTUAL_ENV_DISABLE_PROMPT=1

venv () {
    [ $VIRTUAL_ENV ] &&
        echo "%{$fg[cyan]%}("`basename $VIRTUAL_ENV`")%{$reset_color%}"
}

user () {
    echo "%{$fg[green]%}%n%{$reset_color%}"
}

host () {
    echo "%{$fg_bold[blue]%}%m%{$reset_color%}"
}

dir () {
    echo "%{$fg[yellow]%}%1~%{$reset_color%}"
}

export PROMPT=$'$(user)@$(host):$(dir)$(venv) » '

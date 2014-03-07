autoload colors && colors

export VIRTUAL_ENV_DISABLE_PROMPT=1

venv () {
    [ $VIRTUAL_ENV ] &&
        echo "(%{$fg[cyan]%}("`basename $VIRTUAL_ENV`")%{$reset_color%})"
}

user () {
    echo "%{$fg[cyan]%}%n%{$reset_color%}"
}

host () {
    echo "%{$fg[yellow]%}%m%{$reset_color%}"
}

dir () {
    echo "%{$fg[green]%}%1~%{$reset_color%}"
}

export PROMPT=$'$(user)@$(host):$(dir)$(venv) » '

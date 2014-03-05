autoload colors && colors

export VIRTUAL_ENV_DISABLE_PROMPT=1

venv_info () {
    [ $VIRTUAL_ENV ] &&
        echo "%{$fg[cyan]%}("`basename $VIRTUAL_ENV`")%{$reset_color%} "
}

dir () {
    echo "%{$fg[green]%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'\n$(dir) » '
export RPROMPT=$'$(venv_info)%{$fg[yellow]%}%M%{$reset_color%}'

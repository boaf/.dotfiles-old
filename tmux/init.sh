#!/bin/zsh

# auto-start tmux if we're SSH'd

if [ $SSH_CONNECTION ] && [ ! $TMUX ]; then
    echo -n "tmux? [Y/n] "
    read choice
    if [[ $choice =~ [Nn] ]]; then
        return
    fi

    WHOAMI=$(whoami)
    if tmux has-session -t $WHOAMI 2>/dev/null; then
        tmux -2 attach-session -t $WHOAMI
    else
        tmux -2 new-session -s $WHOAMI
    fi
fi

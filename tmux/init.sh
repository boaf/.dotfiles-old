#!/bin/zsh

# auto-start tmux control mode if we're SSH'd

if [ $SSH_CONNECTION ] && [ ! $TMUX ]; then
    echo -n "Login w/ tmux in Control Mode? [Y/n]"
    read choice
    if [[ $choice =~ [Nn] ]]; then
        return
    fi

    WHOAMI=$(whoami)
    if tmux has-session -t $WHOAMI 2>/dev/null; then
        tmux -CC -2 attach-session -t $WHOAMI
    else
        tmux -CC -2 new-session -s $WHOAMI
    fi
fi

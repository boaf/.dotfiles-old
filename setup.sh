#!/usr/bin/env zsh

ZSHRC=$HOME/.zshrc

if [ -f $ZSHRC ]; then
    echo "\033[0;30;41m .dotfiles already installed! \033[0m"
    exit
fi

ln -s $HOME/.dotfiles/zsh/zshrc.zsh $HOME/.zshrc
ln -s $HOME/.dotfiles/vim/.vim $HOME/.vim
ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc

#!/bin/sh

ZSHRC=$HOME/.zshrc

if [ -f $ZSHRC ]; then
    echo "\033[0;30;41m .dotfiles already installed! \033[0m"
    exit
fi

D=$HOME/.dotfiles

ln -s $D/zsh/zshrc.zsh $HOME/.zshrc
ln -s $D/vim/.vimrc $HOME/.vimrc
ln -s $D/tmux/tmux.conf $HOME/.tmux.conf
ln -s $D/git/git.conf $HOME/.gitconfig

$D/homebrew/install.sh
$D/karabiner/install.sh

if [[ $SHELL =~ zsh ]]; then
	echo "zsh already set as default shell"
else
	echo "zsh must now be set as default shell"
	echo "run this after this script exits"
	echo "    sudo /usr/local/bin/zsh >> /etc/shells"
	echo "    chsh -s /usr/local/bin/zsh"
fi

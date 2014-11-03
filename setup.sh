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
	echo "You may be prompted to enter your password to set zsh as shell"
	sudo echo /usr/local/bin/zsh >> /etc/shells
	chsh -s /usr/local/bin/zsh # using git zsh instead of mac's older default
fi

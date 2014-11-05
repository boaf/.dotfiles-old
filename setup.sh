#!/bin/sh

link () {
    from="$1"
    to="$2"
    rm -f "$to"
    ln -s "$from" "$to"
}

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

if [ "$(uname -s)" == "Darwin" ]; then
    $D/homebrew/install.sh
    $D/karabiner/install.sh

    link "$D/sublime/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
    link "$D/sublime/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"

    defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -boolean true
    defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/iterm2"
    defaults write com.googlecode.iterm2 NoSyncNeverRemindPrefsChangesCopy -boolean true
fi

if [[ $SHELL =~ zsh ]]; then
    echo "zsh already set as default shell"
else
    echo "zsh must now be set as default shell"
    echo "run this after this script exits"
    echo "    sudo /usr/local/bin/zsh >> /etc/shells"
    echo "    chsh -s /usr/local/bin/zsh"
fi

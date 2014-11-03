#!/bin/sh

brew_packages=(
    grc
    coreutils
    spark

    ffmpeg
    fswatch
    imagemagick
    irssi
    mercurial
    mongodb
    node
    python3
    sdl
    tmux
    zsh

    caskroom/cask/brew-cask
)

cask_packages=(
    appcleaner
    boot2docker
    chicken
    cyberduck
    dropbox
    firefox
    google-chrome
    google-chrome-canary
    iterm2
    karabiner
    keepassx
    rdio
    robomongo
    sequel-pro
    skype
    sourcetree
    spectacle
    sublime-text3
    the-unarchiver
    virtualbox
    vlc
)

if [ "$(uname -s)" != "Darwin" ]; then
    exit
fi

if test ! $(which brew)
then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

brew install ${brew_packages[@]}

brew tap caskroom/versions
brew cask install ${cask_packages[@]}

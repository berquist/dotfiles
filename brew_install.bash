#!/usr/bin/env bash

# brew_install.bash: These are all packages that should be installed via
# Homebrew.

# source me!

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

packages=(
    dos2unix
    editorconfig
    emacs
    git
    gpg
    ispell
    keychain
    kotlin
    nano
    pandoc
    ripgrep
    tmux
    wget
)

packages_ext=(
    shyiko/ktlint/ktlint
)

packages_cask=(
    1password
    anaconda
    divvy
    dropbox
    emacs
    firefox
    intellij-idea-ce
    pycharm-ce
    slack
)

for package in ${packages[@]}; do
    brew install ${package}
done

for package in ${packages_ext[@]}; do
    brew install ${package}
done

for package in ${packages_cask[@]}; do
    brew cask install ${package}
done

brew cleanup

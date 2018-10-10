#!/usr/bin/env bash

# brew_install.bash: These are all packages that should be installed via
# Homebrew.

# source me!

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

packages=(
    autoconf
    automake
    cmake
    colordiff
    docker
    docker-machine
    dos2unix
    editorconfig
    emacs
    fuseki
    git
    gpg
    "gradle --with-all"
    htop
    hub
    ispell
    jena
    keychain
    kotlin
    less
    lesspipe
    lftp
    libtool
    maven
    nano
    pandoc
    reattach-to-user-namespace
    ripgrep
    "sox --with-libao --with-libsndfile --with-opencore-amr --with-opusfile"
    tmux
    util-linux
    wget
)

packages_ext=(
    shyiko/ktlint/ktlint
)

packages_cask=(
    # 1password
    anaconda
    basecamp
    blue-jeans
    # caffeine
    dash
    # divvy
    # dropbox
    emacs
    # firefox
    # intellij-idea-ce
    iterm2
    java
    kitty
    mactex
    meld
    # pycharm-ce
    # slack
    visualvm
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

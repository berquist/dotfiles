#!/usr/bin/env bash

# install_homebrew.bash: These are all packages that should be installed via
# Homebrew.

packages=(
    ant
    autoconf
    automake
    bash # Don't forget to add to /etc/shells
    blazegraph
    cmake
    colordiff
    docker
    docker-machine
    dos2unix
    editorconfig
    # emacs
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
    lmod
    maven
    mono
    nano
    npm
    pandoc
    reattach-to-user-namespace
    ripgrep
    shellcheck
    "sox --with-libao --with-libsndfile --with-opencore-amr --with-opusfile"
    tidy-html5
    tmux
    util-linux
    watchman
    wget
    xmlstarlet
    zsh # Don't forget to add to /etc/shells
)

packages_ext=(
    holgerbrandl/tap/kscript
    shyiko/ktlint/ktlint
    vale
)

packages_cask=(
    # -> problems due to app relocation
    # 1password
    # anaconda
    basecamp
    blue-jeans
    # caffeine
    dash
    # divvy
    # dropbox
    emacs
    # -> problems due to app relocation
    # firefox
    # -> problems due to app relocation
    # intellij-idea-ce
    iterm2
    java
    kitty
    mactex
    meld
    # -> problems due to app relocation
    # pycharm-ce
    # slack
    spectacle
    visualvm
    zotero
)

function install() {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    for package in ${packages[@]}; do
        brew install "${package}"
    done

    brew tap valelint/vale

    for package in ${packages_ext[@]}; do
        brew install "${package}"
    done

    for package in ${packages_cask[@]}; do
        brew cask install "${package}"
    done

    brew cleanup
}

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
    fd
    fuseki
    fzf
    git
    gpg
    "gradle --with-all"
    htop
    hub
    ispell
    jena
    jq
    keychain
    kotlin
    less
    lesspipe
    lftp
    libgit2
    libtool
    lmod
    maven
    mono
    nano
    npm
    pandoc
    proselint
    pyenv
    pyenv-virtualenv
    pyenv-virtualenvwrapper
    reattach-to-user-namespace
    r
    rbenv-bundler
    ripgrep
    shellcheck
    "sox --with-libao --with-libsndfile --with-opencore-amr --with-opusfile"
    tidy-html5
    tmux
    util-linux
    watchman
    wget
    xmlstarlet
    zlib
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
    rstudio
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

# really???
# sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

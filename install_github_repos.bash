#!/usr/bin/env bash

# install_github_repos.bash:

repos=(
    chrissimpkins/codeface
    github/gitignore
    mbadolato/iTerm2-Color-Schemes
    robbyrussell/oh-my-zsh
)

function install() {
    loc=$HOME/repositories
    mkdir -p $loc
    cd $loc

    for repo in ${repos[@]}; do
        url=https://github.com/${repo}.git
        git clone $url
    done
}

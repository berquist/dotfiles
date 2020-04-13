#!/usr/bin/env bash

# install_github_repos.bash:

repos=(
    chrissimpkins/codeface
    github/gitignore
    mbadolato/iTerm2-Color-Schemes
    plexus/chemacs
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

if [[ $(uname) == "Linux" ]]; then
    fonts_dir=${HOME}/.local/share/fonts
    mkdir -p ${fonts_dir}
    ln -sv $HOME/repositories/chrissimpkins/codeface ${fonts_dir}/codeface
    fc-cache
fi

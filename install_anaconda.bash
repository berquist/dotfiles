#!/usr/bin/env bash

# install_anaconda.bash: Download and install the latest version of the
# Anaconda Python distribution for macOS or Linux.

version=5.3.0

function getos() {
    if [[ $(uname) =~ "Darwin" ]]; then
        echo "MacOSX"
    else
        echo "Linux"
    fi
}

file=Anaconda3-$version-$(getos)-x86_64.sh
url=https://repo.anaconda.com/archive/$file
wget $url
mkdir -p $HOME/opt/apps/python
bash $file

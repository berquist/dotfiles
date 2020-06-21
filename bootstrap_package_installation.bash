#!/usr/bin/env bash

set -euo pipefail

funame=$(uname -a)
base_plat=$(echo ${funame} | cut -d ' ' -f 1)

case ${base_plat} in
    # TODO don't assume that we're on Arch: add Pop!_OS detection
    Linux)
        sudo pacman -S ansible
        ;;
    Darwin)
        if [[ ! -f /usr/local/bin/brew ]]; then
            /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        fi
        /usr/local/bin/brew install ansible
        ;;
    *)
esac

ansible-galaxy install -r requirements.yaml

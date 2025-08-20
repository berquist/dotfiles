#!/usr/bin/env bash

# Bootstrapping strategy: start with Ansible from the system package
# manager. If on macOS and Homebrew isn't installed, install it.

set -euo pipefail

funame=$(uname -a)
base_plat=$(echo ${funame} | cut -d ' ' -f 1)

case ${base_plat} in
    Linux)
        if [[ ! -f /usr/bin/ansible ]]; then
            if [[ "${funame}" =~ 'arch' ]]; then
                sudo pacman -S ansible
            elif [[ "${funame}" =~ 'Ubuntu' ]]; then
                sudo apt install ansible
            fi
        elif $(command -v ansible); then
            if [[ "${funame}" =~ "NixOS" ]]; then
            fi
        fi
        ;;
    Darwin)
        if [[ ! -f /usr/local/bin/brew ]]; then
            /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        fi
        /usr/local/bin/brew install ansible
        ;;
    *) ;;
esac

ansible-galaxy install -r ./ansible/requirements.yaml

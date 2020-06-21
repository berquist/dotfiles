#!/usr/bin/env bash

set -euo pipefail

funame=$(uname -a)
base_plat=$(echo ${funame} | cut -d ' ' -f 1)

case ${base_plat} in
    Linux)
        if [[ ! -f /usr/bin/ansible ]]; then
            if test $(echo ${funame} | grep -F 'arch'); then
                sudo pacman -S ansible
            elif test $(echo ${funame} | grep -F 'Ubuntu'); then
                sudo apt install ansible
            fi
        fi
        ;;
    Darwin)
        if [[ ! -f /usr/local/bin/brew ]]; then
            /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        fi
        /usr/local/bin/brew install ansible
        ;;
    *)
esac

ansible-galaxy install -r ./ansible/requirements.yaml

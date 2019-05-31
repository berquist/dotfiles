#!/usr/bin/env zsh

# https://superuser.com/a/583502/551499
if [ -f /etc/zprofile ]; then
    PATH=""
    source /etc/zprofile
fi

source "${HOME}"/dotfiles/path_exports.bash

# if command -v pyenv 1>/dev/null 2>&1; then eval "$(pyenv init -)"; fi
# if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi

if command -v rbenv 1>/dev/null 2>&1; then eval "$(rbenv init -)"; fi

# Rust
[[ -f "${HOME}/.cargo/env" ]] && source "${HOME}/.cargo/env"

# Nim
[[ -d "${HOME}/.nimble/bin" ]] && export PATH="${HOME}/.nimble/bin:${PATH}"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/berquist/opt/apps/python/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/berquist/opt/apps/python/anaconda/etc/profile.d/conda.sh" ]; then
        . "/Users/berquist/opt/apps/python/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/berquist/opt/apps/python/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

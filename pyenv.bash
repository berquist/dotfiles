#!/usr/bin/env bash

if [[ -z "${PYENV_ROOT}" ]]; then
    pyenv_root="${HOME}/.pyenv"
    [[ -d "${pyenv_root}" ]] && export PYENV_ROOT="${pyenv_root}"
fi

if command -v pyenv > /dev/null 2>&1; then eval "$(pyenv init -)"; fi
if command -v pyenv-virtualenv-init 1> /dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi

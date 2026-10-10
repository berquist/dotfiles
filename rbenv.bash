#!/usr/bin/env bash

if [[ -z "${RBENV_ROOT}" ]]; then
    rbenv_root="${HOME}/.rbenv"
    [[ -d "${rbenv_root}" ]] && export RBENV_ROOT="${rbenv_root}"
fi

if command -v rbenv >&/dev/null; then
    eval "$(rbenv init - --no-rehash zsh)"
fi

#!/usr/bin/env bash

if command -v pyenv >/dev/null 2>&1; then eval "$(pyenv init -)"; fi
if command -v pyenv-virtualenv-init 1>/dev/null 2>&1; then eval "$(pyenv virtualenv-init -)"; fi

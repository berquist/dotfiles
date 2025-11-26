#!/usr/bin/env bash

if [ -n "$__SOURCED_INTERACTIVE_EXPORTS" ]; then return; fi
# echo "running interactive_exports"
export __SOURCED_INTERACTIVE_EXPORTS=1

export DFT_OVERRIDE='*.mdxml:XML'
# difftastic: don't show unchanged files
export DFT_SKIP_UNCHANGED=true

# https://askubuntu.com/a/866376
export EDITOR="emacsclient -t -a=\"\""

# https://twitter.com/hhulkko/status/114256631419772928
# http://darrendev.blogspot.com/2011/07/customize-less-less-annoying.html
export LESS="-FRX"
# export LESS_ADVANCED_PREPROCESSOR=1
# export LESSOPEN="|$(command -v lesspipe.sh) %s"

export MANWIDTH=78

export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

if command -v virtualenvwrapper_lazy.sh > /dev/null 2>&1; then
    source "$(command -v virtualenvwrapper_lazy.sh)"
fi

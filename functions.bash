#!/usr/bin/env bash

# Ensure the pager is used for certain Subversion operations.
function svn() {
    if [[ "$1" = "diff" ]] || [[ "$1" = "log" ]] || [[ "$1" = "blame" ]]
    then
        command svn "$@" | less
    else
        command svn "$@"
    fi
}

# Taken from
# https://github.com/robbyrussell/oh-my-zsh/blob/a4f6a9964ceec3d222a8caa8eb3e5cf6027cfbab/plugins/python/python.plugin.zsh#L6
function pyclean() {
    PYCLEAN_PLACES=${*:-'.'}
    find ${PYCLEAN_PLACES} -type f -name "*.py[co]" -delete
    find ${PYCLEAN_PLACES} -type d -name "__pycache__" -delete
    find ${PYCLEAN_PLACES} -type d -name ".mypy_cache" -delete
    find ${PYCLEAN_PLACES} -type d -name ".pytest_cache" -delete
}

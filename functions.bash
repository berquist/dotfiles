#!/usr/bin/env bash

# Ensure the pager is used for certain Subversion operations.
svn() {
    if [[ "$1" == "diff" ]] || [[ "$1" == "log" ]] || [[ "$1" == "blame" ]]
    then
        command svn "$@" | less
    else
        command svn "$@"
    fi
}

buildah_prune() {
    buildah containers --all
    buildah rm --all
    buildah containers --all
    buildah images --all
    buildah rmi --prune
    buildah rmi --all
    buildah images --all
}

# Taken from
# https://github.com/robbyrussell/oh-my-zsh/blob/a4f6a9964ceec3d222a8caa8eb3e5cf6027cfbab/plugins/python/python.plugin.zsh#L6
pyclean() {
    PYCLEAN_PLACES=${*:-'.'}
    find ${PYCLEAN_PLACES} -type f -name "*.py[co]" -delete
    find ${PYCLEAN_PLACES} -type d -name "__pycache__" -delete
    find ${PYCLEAN_PLACES} -type d -name ".mypy_cache" -delete
    find ${PYCLEAN_PLACES} -type d -name ".pytest_cache" -delete
    find ${PYCLEAN_PLACES} -type d -name ".ruff_cache" -delete
    find ${PYCLEAN_PLACES} -type d -name "htmlcov" -delete
}

spack-checksum-add () {
    spack checksum --batch --add-to-package ${1}
}

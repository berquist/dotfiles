#!/usr/bin/env zsh

# Lines configured by zsh-newuser-install
setopt appendhistory beep nomatch
unsetopt autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"
autoload -Uz compinit
compinit
# End of lines added by compinstall

. "${HOME}"/dotfiles/history.zsh
. "${HOME}"/dotfiles/interactive_exports.bash
. "${HOME}"/dotfiles/aliases.bash 
. "${HOME}"/dotfiles/functions.bash
. "${HOME}"/dotfiles/slurm.bash

machine_specific_file="${HOME}"/dotfiles/.zshrc."$(hostname -s)"
if [[ -f "${machine_specific_file}" ]]; then
    . "${machine_specific_file}"
fi

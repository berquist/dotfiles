#!/usr/bin/env zsh

# Lines configured by zsh-newuser-install
setopt appendhistory beep nomatch
unsetopt autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"
fpath=("${HOME}"/dotfiles/zfunc $fpath)
autoload -Uz compinit
compinit
# End of lines added by compinstall

source "${HOME}"/dotfiles/history.zsh
source "${HOME}"/dotfiles/interactive_exports.bash
source "${HOME}"/dotfiles/aliases.bash 
source "${HOME}"/dotfiles/functions.bash

source "${HOME}"/dotfiles/.zshrc."$(hname)"

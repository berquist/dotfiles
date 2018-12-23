#!/usr/bin/env zsh

export HISTCONTROL=
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTFILE="${HOME}"/.zhistfile
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; ${PROMPT_COMMAND}"
# What does this do?
export SAVEHIST=1000000000

if [ "$COLORTERM" = "xfce4-terminal" ] && [ "$TMUX" = "" ] && [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM=xterm-256color
fi

source "${HOME}"/dotfiles/exports.bash

# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

pythonpathdirs=($(find "${HOME}"/pythonpath -maxdepth 1 -type d))
# https://stackoverflow.com/questions/1335815/how-to-slice-an-array-in-bash
for d in ${pythonpathdirs[@]:1}; do
    export PYTHONPATH="${d}:$PYTHONPATH"
done

export LD_LIBRARY_PATH="${HOME}/opt/lib:${LD_LIBRARY_PATH}"

export PATH="${HOME}/repositories/rmsd/rmsd:${PATH}"
export PATH="${HOME}/opt/bin/scripts:${PATH}"
export PATH="${HOME}/.node_modules/bin:${PATH}"

export SCRATCH=/tmp
export scratch="${SCRATCH}"

# MROOT="${HOME}/Dropbox/MATLAB"
# export MATLABPATH="${MROOT}:${MROOT}/easyspin-4.5.5/easyspin:${MATLABPATH}"
# export MATLAB_USE_USERWORK=1

export npm_config_prefix="${HOME}"/.node_modules

if [[ $(uname) == "Darwin" ]]; then
    source ${HOME}/dotfiles/.zprofile.macos
fi

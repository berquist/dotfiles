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

if [ "$COLORTERM" = "xfce4-terminal" ] && [ "$TMUX" = "" ] && [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM=xterm-256color
fi

# https://twitter.com/hhulkko/status/114256631419772928
# http://darrendev.blogspot.com/2011/07/customize-less-less-annoying.html
export LESS="-FRX"

########################################
### ALIASES
########################################

source aliases.bash 

export MANWIDTH=78
export EDITOR='emacs -nw'

# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

########################################
### PATHS
########################################

# PYTHONPATH="${HOME}:${PYTHONPATH}"
# PYTHONPATH="${HOME}/personal_scripts:${PYTHONPATH}"
pythonpathdirs=($(find "$HOME"/pythonpath -maxdepth 1 -type d))
# https://stackoverflow.com/questions/1335815/how-to-slice-an-array-in-bash
for d in ${pythonpathdirs[@]:1}; do
    PYTHONPATH="${d}:$PYTHONPATH"
done
export PYTHONPATH

LD_LIBRARY_PATH="${HOME}/opt/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH

PATH="${HOME}/repositories/rmsd/rmsd:${PATH}"
PATH="${HOME}/personal_scripts:${PATH}"
PATH="${HOME}/opt/bin/scripts:${PATH}"
PATH="${HOME}/opt/bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"
PATH="/usr/local/bin:${PATH}"
PATH="${HOME}/.node_modules/bin:${PATH}"
export PATH

export QCPROGS="${HOME}"/opt/apps
export apps="${QCPROGS}"
export SCRATCH=/tmp
export scratch="${SCRATCH}"

export PIP_CONFIG_FILE="${HOME}"/dotfiles/pip.conf

########################################
### MATLAB
########################################

# MROOT="${HOME}/Dropbox/MATLAB"
# export MATLABPATH="${MROOT}:${MROOT}/easyspin-4.5.5/easyspin:${MATLABPATH}"
# export MATLAB_USE_USERWORK=1

########################################
### NODE
########################################

export npm_config_prefix="${HOME}"/.node_modules

########################################
### FUNCTIONS
########################################

# TODO why is the syntax different here?
function hname {
    if [ `uname` = "Darwin" ]; then
        echo "`hostname -s`"
    else
        echo "`hostname`"
    fi
}

function pip2-locations {
    for i in $(pip2 freeze | cut -d'=' -f1); do
        echo -n " $i "
        pip2 show $i | grep Location | cut -d':' -f3
    done
}

function pip3-locations {
    for i in $(pip3 freeze | cut -d'=' -f1); do
        echo -n " $i "
        pip3 show $i | grep Location | cut -d':' -f3
    done
}

svn() {
    if [ "$1" = "diff" -o "$1" = "log" -o "$1" = "blame" ]
    then
        command svn "$@" | less
    else
        command svn "$@"
    fi
}

# https://unix.stackexchange.com/q/3773
# https://unix.stackexchange.com/q/248080
# find() {
#     find "$@" 2>/dev/null
# }

########################################
### selective sourcing
########################################

source "${HOME}/dotfiles/.zshrc.$(hname)"

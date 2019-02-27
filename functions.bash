#!/usr/bin/env bash

function hname() {
    if [[ "$(uname)" == "Darwin" ]]; then
        hostname -s
    else
        hostname
    fi
}

function pip2-locations() {
    for i in $(pip2 freeze | cut -d'=' -f1); do
        echo -n " $i "
        pip2 show $i | grep Location | cut -d':' -f3
    done
}

function pip3-locations() {
    for i in $(pip3 freeze | cut -d'=' -f1); do
        echo -n " $i "
        pip3 show $i | grep Location | cut -d':' -f3
    done
}

# TODO convert to bash
function svn() {
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

function pst() {
    ps --forest -o pid,tty,stat,time,cmd -g $(ps -o sid= -p $1)
}

# https://stackoverflow.com/a/10169840
function hub() {
    if [[ $# -gt 0 ]] && [[ "$1" == "pr" ]] && [[ "$2" == "list" ]]; then
        shift
        command hub pr list --format="%sC%>(8)%i%Creset %t %Cblue[%H]%Creset %l %Cgreen%Mt%Creset%n" "$@"
    else
        command hub "$@"
    fi
}

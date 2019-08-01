#!/usr/bin/env zsh

# https://superuser.com/a/583502/551499
if [[ -f /etc/zprofile ]]; then
    PATH=""
    source /etc/zprofile
fi

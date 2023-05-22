#!/usr/bin/env bash

case "${TERM}" in
    # Not necessary when you change it in the Alacritty configuration.
    # alacritty )
    #     export TERM=xterm-256color
    #     ;;
    eterm-color )
        # hmmmm...eterm, xterm, or xterm-*color?
        export TERM=eterm
        ;;
    * )
        ;;
esac

#!/bin/sh

# Add (prepend) a path to PATH if it exists as a directory and isn't already
# in the PATH.
prepend_to_path() {
    candidate="${1}"
    if [ -d "${candidate}" ]; then
        case ":$PATH:" in
            *:"${candidate}":*)
                ;;
            *)
                export PATH="${candidate}${PATH:+:${PATH}}"
                ;;
        esac
    fi
    unset candidate
}

try_source() {
    loc="${1}"
    # shellcheck disable=SC1090
    [ -f "${loc}" ] && . "${loc}"
}

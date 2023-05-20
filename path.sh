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
                # echo "added: ${candidate}"
                ;;
        esac
    fi
    unset candidate
}

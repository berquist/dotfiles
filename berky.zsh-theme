# -*- mode: shell-script -*-

### My personal zsh "theme"

function virtualenv_prompt_info() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        name=$(basename "$VIRTUAL_ENV")
        pythonver=$($(which python) -c 'import sys; print(sys.version)' | head -n 1 | cut -f 1 -d ' ')
        print "%{$fg_bold[white]%}\(env: %{$fg[green]%}$name%{$fg_bold[white]%} $pythonver\)%{$reset_color%}"
    fi
}

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

# PROMPT='%{$fg[cyan]%}%d%{$reset_color%}$(virtualenv_prompt_info)
# [%{$fg[blue]%}%n%{$reset_color%}@%{$fg[cyan]%}$(hname)%{$reset_color%}]%(!.#.$) '

# modified slightly from the bureau theme
_PATH="%{$white[cyan]%}%~%{$reset_color%}"

if [[ $EUID -eq 0 ]]; then
  _USERNAME="%{$fg_bold[red]%}%n"
  _LIBERTY="%{$fg_bold[red]%}#"
else
  _USERNAME="%{$fg[blue]%}%n"
  _LIBERTY="%{$fg_bold[white]%}$"
fi

_USERNAME="[$_USERNAME%{$reset_color%}@$fg[cyan]%m$reset_color]"
_LIBERTY="$_LIBERTY%{$reset_color%}"

PROMPT='$_USERNAME $_PATH$(virtualenv_prompt_info) $_LIBERTY '

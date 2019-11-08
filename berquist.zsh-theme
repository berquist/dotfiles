# -*- mode: shell-script -*-

### My personal zsh "theme"

function virtualenv_prompt_info() {
    if [[ -n "${VIRTUAL_ENV}" ]]; then
        name=$(basename "${VIRTUAL_ENV}")
        pythonver=$($(command -v python) -c 'import sys; print(sys.version)' | head -n 1 | cut -f 1 -d ' ')
        print "%{$fg_bold[white]%}\(venv: %{$fg[green]%}$name%{$fg_bold[white]%} ${pythonver}\)%{$reset_color%}"
    fi
}

function conda_prompt_info() {
    if [[ -n "${CONDA_PREFIX}" ]]; then
        name="${CONDA_DEFAULT_ENV}"
        pythonver=$($(command -v python) -c 'import sys; print(sys.version)' | head -n 1 | cut -f 1 -d ' ')
        print "%{$fg_bold[white]%}\(conda: %{$fg[green]%}$name%{$fg_bold[white]%} ${pythonver}\)%{$reset_color%}"
    fi
}

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

RPROMPT=''

PROMPT='%{$fg[yellow]%}%d%{$reset_color%} $(git_super_status) $(virtualenv_prompt_info) $(conda_prompt_info)
[%{$fg[blue]%}%n%{$reset_color%}@%{$fg[cyan]%}$(hname)%{$reset_color%}]%(!.#.$) '

# -*- mode: shell-script -*-

# My personal zsh "theme"

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

## spaceship

### Order
SPACESHIP_PROMPT_ORDER=(
  user
  dir
  host
  git
  package
  rust
  julia
  docker
  venv
  conda
  pyenv
  exec_time
  line_sep
  jobs
  exit_code
  char
)

### Prompt
export SPACESHIP_PROMPT_ADD_NEWLINE=false

### Char
export SPACESHIP_CHAR_SUFFIX=' '
export SPACESHIP_CHAR_SYMBOL='$'

### Username
export SPACESHIP_USER_SHOW=always

### Hostname
export SPACESHIP_HOST_SHOW=always

### Directory
export SPACESHIP_DIR_TRUNC=0

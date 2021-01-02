#################### ########### ####################
#################### Main Region ####################
#################### ########### ####################

export PATH="$XDG_CONFIG_HOME/devrc/bin:$PATH"
export MYPY_CACHE_DIR="$XDG_CACHE_HOME/mypy"


git-ssh() {
  if [[ $# -eq 0 ]]
  then
    unset GIT_SSH_COMMAND
  else
    export GIT_SSH_COMMAND="$(command git-ssh "$@")"
  fi
}

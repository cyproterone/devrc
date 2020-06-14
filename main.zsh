#################### ########### ####################
#################### Main Region ####################
#################### ########### ####################

export PATH="$XDG_CONFIG_HOME/devrc/bin:$PATH"
export NPM_GLOBAL_HOME="$XDG_DATA_HOME/npm_global"
export PATH="$NPM_GLOBAL_HOME/node_modules/.bin:$PATH"


git-ssh() {
  export GIT_SSH_COMMAND="$(command git-ssh "$@")"
}


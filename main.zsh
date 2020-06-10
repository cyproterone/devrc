#################### ########### ####################
#################### Main Region ####################
#################### ########### ####################

_devrc_main() {
  local file="${(%):-%x}"
  local bin="$(dirname "$file")/bin"
  export PATH="$bin:$PATH"
}

_devrc_main
unset -f _devrc_main


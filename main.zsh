#################### ########### ####################
#################### Main Region ####################
#################### ########### ####################

_devrc_main() {
  local wd="$(dirname "${(%):-%x}")"
  export PATH="$wd/bin:$PATH"
}

_devrc_main
unset -f _devrc_main


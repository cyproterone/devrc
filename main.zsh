#################### ########### ####################
#################### Main Region ####################
#################### ########### ####################

_devrc_main() {
  local wd="$(dirname "${(%):-%x}")"

  export PATH="$wd/bin:$PATH"

  local modules="$wd/modules"
  for module in "$modules"/**/bin(N)
  do
    export PATH="$module:$PATH"
  done
}

_devrc_main
unset -f _devrc_main


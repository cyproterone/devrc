#################### ########### ####################
#################### Main Region ####################
#################### ########### ####################

_devrc_main() {
  local wd="$(dirname "${(%):-%x}")"

  export PATH="$wd/bin:$PATH"

  for module in modules/**/bin(N)
  do
    export PATH="$wd/$module:$PATH"
  done
}

_devrc_main
unset -f _devrc_main


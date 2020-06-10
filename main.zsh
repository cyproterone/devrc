#################### ########### ####################
#################### Main Region ####################
#################### ########### ####################

_devrc_main() {
  local wd="$(dirname "${(%):-%x}")"

  export PATH="$wd/bin:$PATH"

  for module in "$wd/modules/"**(N)
  do
    if [[ -d "$module/bin" ]]
    then
      export PATH="$module:$PATH"
    fi

    if [[ -f "$module/main.zsh" ]]
    then
      source "$module/main.zsh"
    fi
  done
}

_devrc_main
unset -f _devrc_main


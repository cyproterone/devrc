#!/usr/bin/env bash

set -eu
set -o pipefail


cd "$(dirname "$0")" || exit 1


mapfile -t PIP_PKGS < 'pip.txt'
pip3 install --upgrade -- "${PIP_PKGS[@]}" < /dev/null

mapfile -t NPM_PKGS < 'npm.txt'
npm install --global --upgrade -- "${NPM_PKGS[@]}"

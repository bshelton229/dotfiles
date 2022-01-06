#!/bin/bash

set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -s ${SCRIPT_DIR}/.gitconfig ~/.bash_aliases
ln -s ${SCRIPT_DIR}/.gitconfig ~/.gitconfig
ln -s ${SCRIPT_DIR}/.gitconfig ~/.gitignore-global

# for filename in ${SCRIPT_DIR}/.*; do
#     basename=$(basename $filename)
#     if [[ -f $filename ]]; then
#         ln -s $filename ~/$basename
#     fi
# done
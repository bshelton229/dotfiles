#!/bin/bash

set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# ln -s ${SCRIPT_DIR}/.bash_aliases ~/.bash_aliases
# ln -s ${SCRIPT_DIR}/.gitconfig ~/.gitconfig
# ln -s ${SCRIPT_DIR}/.gitignore-global ~/.gitignore-global

for filename in ${SCRIPT_DIR}/.*; do
    basename=$(basename $filename)
    if [[ "${basename}" != ".." ]] && [[ "${basename}" != "." ]] && [[ "${basename}" != ".git" ]]; then
        ln -s $filename ~/$basename
    fi
done

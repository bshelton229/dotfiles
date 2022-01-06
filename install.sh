#!/bin/bash

set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# ln -s ${SCRIPT_DIR}/.bash_aliases ~/.bash_aliases
# ln -s ${SCRIPT_DIR}/.gitconfig ~/.gitconfig
# ln -s ${SCRIPT_DIR}/.gitignore-global ~/.gitignore-global

# Symlink all root level dotfiles to the home folder
for filename in ${SCRIPT_DIR}/.*; do
    basename=$(basename $filename)
    if [[ -f $filename ]]; then
        ln -s $filename ~/$basename
    fi
done

for hook in ${SCRIPT_DIR}/git-hooks/*; do
    basename=$(basename $hook)
    ln -s $hook $CODESPACE_VSCODE_FOLDER/.git/$basename
done

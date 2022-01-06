#!/bin/bash

set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Symlink all root level dotfiles to the home folder
for filename in ${SCRIPT_DIR}/.*; do
    basename=$(basename $filename)
    if [[ -f $filename ]]; then
        ln -s $filename ~/$basename
    fi
done

for hook in /workspaces/.codespaces/.persistedshare/dotfiles/git-hooks/*; do
    basename=$(basename $hook)
    echo "Is ${CODESPACE_VSCODE_FOLDER} real" >> /tmp/dotfiles.log
    ls -l ${CODESPACE_VSCODE_FOLDER} >> /tmp/dotfiles.log
    sleep 20
    ls -l ${CODESPACE_VSCODE_FOLDER} >> /tmp/dotfiles.log

    if [[ -d $CODESPACE_VSCODE_FOLDER/.git ]]; then
        ln -s $hook $CODESPACE_VSCODE_FOLDER/.git/hooks/$basename
    else
        echo "Not a directory" >> /tmp/dotfiles.log
    fi
done

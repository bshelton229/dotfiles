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

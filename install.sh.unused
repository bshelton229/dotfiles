#!/bin/bash

set -euo pipefail

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# ln -s ${SCRIPT_DIR}/.gitconfig ~/.gitconfig

for filename in ${SCRIPT_DIR}/.*; do
    basename=$(basename $filename)
    if [[ -f $filename ]]; then
        ln -s $filename ~/$basename
    fi
done

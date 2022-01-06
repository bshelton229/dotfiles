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


function install_hooks() {
	dest=$1
	for hook in ${SCRIPT_DIR}/git-hooks/*; do
		basename=$(basename $hook)
		ln -nfs $hook $dest/$basename
	done
}


for workspace_git_hooks_dir in /workspaces/*/.git/hooks; do
	echo "Installing git hooks into ${workspace_git_hooks_dir}"
	install_hooks $workspace_git_hooks_dir
done

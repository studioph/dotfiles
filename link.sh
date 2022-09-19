#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

function link(){
    local dotfile="$1"
    ln --symbolic --force "$PWD/$dotfile" "$HOME/$dotfile"
}

link .bashrc
link .exports
link .path
link .gitconfig
link .selected_editor
#!/bin/bash


function sublime_files(){
    # #####################
    # SUBLIME
    # #####################
    # keybindings
    local -r sublime_keybindings="~/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
    local -r repo_sublime_keybindings="~/Documents/Repositories/mac-os-reinstallation-script/preferences/sublime/keybindings/Default (OSX).sublime-keymap"
    cp "$sublime_keybindings" "$repo_sublime_keybindings"
}


function homebrew_setup(){
    brew bundle dump --force --file="$(pwd)/Brewfile"
}

function back_to_usb_folder(){
    local -r backup_dir="$HOME/Downloads/mac-os-reinstallation-package"
    mkdir -p "$backup_dir"

    cp -r ~/Documents/Sync/Mackup "$backup_dir/Mackup"
    cp -r ~/Documents/Repositories/mac-os-reinstallation-script "$backup_dir/mac-os-reinstallation-script"
}

function main(){
    sublime_files
    homebrew_setup
    back_to_usb_folder
}
main
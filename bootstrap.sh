#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude ".bashrc" \
        --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
    source ~/.bashrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read "Nice! Once the install finishes you'll have to init submodules in ~/ and update your .bashrc";
        doIt;
    fi;
fi;
unset doIt;

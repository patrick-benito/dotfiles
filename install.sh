#!/bin/bash


set -e

REPO_ROOT="$(pwd)"


find "$REPO_ROOT" -type f -name ".*" ! -path "$REPO_ROOT/.git/*" | while read -r SRC; do
    FILE_NAME="$(basename "$SRC")"
    DEST="$HOME/$FILE_NAME"


    if [ -e "$DEST" ] && [ ! -L "$DEST" ]; then
        echo "Renaming existing $DEST -> $DEST.backup"
        mv "$DEST" "$DEST.backup"
    fi


    if [ -L "$DEST" ]; then
        rm "$DEST"
    fi


    echo "Linking $SRC -> $DEST"
    ln -s "$SRC" "$DEST"
done

echo "All dotfiles have been linked into $HOME."


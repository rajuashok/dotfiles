#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing AshokYADR for the first time"
    git clone --depth=1 https://github.com/rajuashok/dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "AshokYADR is already installed"
fi

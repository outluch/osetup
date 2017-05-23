#!/bin/bash

CURDIR=$(pwd)

# Emacs config
if ! [ -h ~/.emacs.d ]; then
    if [ -f ~/.emacs.d ]; then
        mv ~/.emacs.d ~/.emacs.d.bak
    fi
    ln -s $CURDIR/emacs.d ~/.emacs.d
    echo ".emacs.d linked, old one is backed up with .bak"
else
    echo "SKIP: .emacs.d already linked"
fi

# zsh config
if ! [ -h ~/.zsh-osetup ]; then
    ln -s $CURDIR/zsh-osetup ~/.zsh-osetup
    echo ".zsh-osetup linked"
else
    echo "SKIP: .zsh-osetup already linked"
fi

if ! grep -Fxq "source ~/.zsh-osetup" ~/.zshrc; then
    echo "source ~/.zsh-osetup" >> ~/.zshrc
    echo "~/.zsh-osetup added to .zshrc"
else
    echo "SKIP: ~/.zsh-osetup already added to .zshrc"
fi

if ! [ -h ~/.tmux.conf ]; then
    if [ -f ~/.tmux.conf ]; then
        mv ~/.tmux.conf ~/.tmux.conf.bak
    fi
    ln -s $CURDIR/tmux.conf ~/.tmux.conf
    echo ".tmux.conf linked, old one is backed up with .bak"
else
    echo "SKIP: .tmux.conf already linked"
fi

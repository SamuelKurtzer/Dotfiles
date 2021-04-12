#!/bin/sh
if [[ -L ~/.Xmodmap ]]; then
    echo "Installing Xmodmap File"
    ln -s ~/Dotfiles/Xmodmap ~/.Xmodmap
fi
if [[ -L ~/.vim/vimrc ]]; then
    echo "installing vimrc files"
    ln -s ~/Dotfiles/vimrc ~/.vim/vimrc
fi
if [[ -L ~/.zshrc ]]; then
    echo "installing zshrc file"
    ln -s ~/Dotfiles/zshrc ~/.zshrc
fi
if [[ -a ~/.gitconfig ]]; then
    echo "installing Git config file"
    ln -s ~/Dotfiles/gitconfig ~/.gitconfig
fi

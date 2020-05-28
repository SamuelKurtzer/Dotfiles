#!/bin/sh

if [[ -L ~/.Xmodmap ]]; then
    ln -s ~/Dotfiles/Xmodmap ~/.Xmodmap
fi
if [[ -L ~/.vim/vimrc ]]; then
    ln -s ~/Dotfiles/vimrc ~/.vim/vimrc
fi
if [[ -L ~/.zshrc ]]; then
    ln -s ~/Dotfiles/zshrc ~/.zshrc
fi
if [[ -L ~/.gitconfig ]]; then
    ln -s ~/Dotfiles/gitconfig ~/.gitconfig
fi
git config --global init.templatedir ~/Dotfiles/git

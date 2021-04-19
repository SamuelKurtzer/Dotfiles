#!/bin/bash

if [[ ! -e ~/.Xmodmap ]]; then
    ln ~/Dotfiles/Xmodmap ~/.Xmodmap
fi
if [[ ! -e ~/.vim/vimrc ]]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ln ~/Dotfiles/vimrc ~/.vim/vimrc
fi
if [[ ! -e ~/.zshrc ]]; then
    zshLocal=$(which zsh)
    if [ -z zshLocal ]; then 
        echo "Please install zsh, then re-run the installer"
    else
        ln ~/Dotfiles/zshrc ~/.zshrc
    fi
fi
if [[ ! -e ~/.gitconfig ]]; then
    ln ~/Dotfiles/gitconfig ~/.gitconfig
fi

git config --global init.templatedir ~/Dotfiles/git

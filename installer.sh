#!/bin/sh
mkdir --parents ~/Dotfiles/backup
now=`date +"%F_%R"`
if [[ -a ~/.Xmodmap ]]; then
	mv ~/.Xmodmap ~/Dotfiles/backup/Xmodmap$(date +"%F_%R")
fi
echo "Installing Xmodmap File"
ln ~/Dotfiles/Xmodmap ~/.Xmodmap
if [[ -a ~/.vim/vimrc ]]; then
	mv ~/.vim/vimrc ~/Dotfiles/backup/vim/vimrc$(date +"%F_%R")
fi
echo "installing vimrc files"
mkdir ~/.vim
ln ~/Dotfiles/vimrc ~/.vim/vimrc
if [[ -a ~/.zshrc ]]; then
	mv ~/.zshrc ~/Dotfiles/backup/zshrc$(date +"%F_%R")
fi
echo "installing zshrc file"
ln ~/Dotfiles/zshrc ~/.zshrc
echo "installing Git config file"
if [[ -a ~/.gitconfig ]]; then
	mv ~/.gitconfig ~/Dotfiles/backup/gitconfig$(date +"%F_%R")
fi
ln ~/Dotfiles/gitconfig ~/.gitconfig

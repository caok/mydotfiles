#!/bin/zsh
git clone https://github.com/caok/mydotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tumx.conf ~/.tmux.conf

mkdir ~/.dotfiles/vim/autoload
mkdir ~/.dotfiles/vim/plugged
curl -fLo ~/.dotfiles/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

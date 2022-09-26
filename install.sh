#!/bin/zsh
git clone https://github.com/caok/mydotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tumx.conf ~/.tmux.conf
mv ~/.dotfiles/vim ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc

mkdir ~/.vim/autoload
mkdir ~/.vim/plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

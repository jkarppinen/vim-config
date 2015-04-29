#!/bin/bash

cd ~/.vim
mkdir -p colors

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim
echo "done"


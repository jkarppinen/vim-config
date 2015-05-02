#!/bin/bash
cd ~
mkdir -p .vim/colors

if [ -L .vimrc ] # If .vimrc is a symbolic link
then
    read -r -p "Symlink found. Do you want to unlink .vimrc? [y/N] " response
    response=${response,,}    # tolower
    if [[ $response =~ ^(yes|y)$ ]]
	then
	    unlink .vimrc
    fi
elif [ -f .vimrc ] # If .vimrc exists
then
    mv .vimrc .vimrc_old
    echo "Current .vimrc moved to .vimrc_old."
fi

ln -s ~/.vim/vimrc ~/.vimrc

if [ -L .vim/colors/monokai.vim ]
then
    unlink .vim/colors/monokai.vim
elif [ -f .vim/colors/monokai.vim ]
then
    mv .vim/colors/monokai.vim .vim/colors/monokai.vim_old
fi

ln -s ~/.vim/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim
echo "done"


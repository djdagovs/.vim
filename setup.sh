#!/bin/bash

set -e

if ! [[ -d ~/.vim ]]; then
  git clone git@github.com:riobard/.vim.git ~/.vim
fi

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.old
ln -s ~/.vim/vimrc ~/.vimrc

if ! [[ -d ~/.vim/bundle/vundle ]]; then
  git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

vi +BundleInstall +qall

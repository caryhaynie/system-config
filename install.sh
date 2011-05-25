#!/bin/bash

# setup this account's vim files to point to the ones in this repository.
ln -s ./vim/ ~/.vim
ln -s .vimrc ~/.vimrc

# setup git correctly
git config --global user.name "Cary Haynie"
git config --global user.email cary.haynie@gmail.com

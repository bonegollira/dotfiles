#!/bin/sh
mkdir -p /usr/local/git/contrib/completion/
cp .git-completion/* /usr/local/git/contrib/completion/
cp ./.bashrc ~/.bashrc
cp ./.bash_profile ~/.bash_profile
cp -r ./.vim ~/.vim
cp ./.vimrc ~/.vimrc

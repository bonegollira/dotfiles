#!/bin/bash

# dotfile {{{
  A="A"
  PWD=`pwd`
  DOTS=".gitconfig .zshrc .zsh .vimrc .vim .peco"
  mkdir -p .vim/bundle
  echo "Link dotfiles: $DOTS"
  for dotfile in $DOTS
  do
    ln -snf $PWD/$dotfile ~/$dotfile
  done
# }}}

# install homebrew {{{
  unamestr=`uname`
  if [[ $unamestr == 'Darwin' ]]; then
    if ! type brew >/dev/null 2>&1; then
      echo "homebrew: installing..."
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
  fi
# }}}

# install ghq {{{
  if ! type ghq >/dev/null 2>&1; then
    echo "ghq: installing..."
    brew tap motemen/ghq
    brew install ghq
  fi
# }}}

# install peco {{{
  if ! type peco >/dev/null 2>&1; then
    echo "peco: installing..."
    brew tap peco/peco
    brew install peco
  fi
# }}}

# install hub {{{
  if ! type hub >/dev/null 2>&1; then
    echo "hub: installing..."
    brew tap github/hub
    brew install hub
  fi
# }}}

# install neobundle {{{
  ghq get https://github.com/Shougo/neobundle.vim
  ln -s `ghq list -p neobundle.vim` ~/.vim/bundle
# }}}

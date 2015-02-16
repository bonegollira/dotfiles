#!/bin/sh

# dotfile {{{
  PWD=`pwd`
  DOTS=".gitconfig .zshrc .zsh .vimrc .vim .peco"
  echo "Link dotfiles: $DOTS"
  for dotfile in $DOTS
  do
    ln -snf $PWD/$dotfile ~/$dotfile
  done
# }}}

# install homebrew {{{
  unamestr=`uname`
  if [[ $unamestr == 'Darwin' ]]; then
    if [ hash brew 2>/dev/null ]; then
      echo "homebrew: installing..."
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
  fi
# }}}

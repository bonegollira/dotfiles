#!/bin/bash

# dotfile {{{
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

# install nodebrew {{{
  if ! type nodebrew >/dev/null 2>&1; then
    echo "nodebrew: installing..."
    curl -L git.io/nodebrew | perl - setup
  fi
# }}}

# install babel, babel-eslint, eslint pure-prompt {{{
  npm install -g babel babel-eslint eslint pure-prompt
  ln -s ~/.nodebrew/current/lib/node_modules/pure-prompt/*.zsh .zsh/
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

# install jq {{{
  if ! type jq >/dev/null 2>&1; then
    echo "jq: installing..."
    brew tap stedolan/jq
    brew install jq
  fi
# }}}

# install zsh-syntax-highlighting {{{
  echo "zsh-syntax-highlighting: installing..."
  ghq get git://github.com/zsh-users/zsh-syntax-highlighting.git
  ln -s `ghq list -p zsh-syntax-highlighting` ~/.zsh/
# }}}

# install neobundle {{{
  ghq get https://github.com/Shougo/neobundle.vim
  ln -s `ghq list -p neobundle.vim` ~/.vim/bundle
# }}}

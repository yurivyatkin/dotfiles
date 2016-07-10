#!/bin/bash

UNAMESTR=`uname`
if [[ "$UNAMESTR" == 'Linux' ]]; then

  # Remove existing links

  rm ~/.bashrc
  rm ~/.gitconfig
  rm ~/.gitignore_global
  rm ~/.profile
  rm ~/.tmux.conf
  rm ~/.vimrc
  rm ~/.zshrc

  # Create symbolik links

  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  ln -s $DIR/bashrc ~/.bashrc
  ln -s $DIR/gitconfig ~/.gitconfig
  ln -s $DIR/gitignore_global ~/.gitignore_global
  ln -s $DIR/profile ~/.profile
  ln -s $DIR/tmux.conf ~/.tmux.conf
  ln -s $DIR/vimrc ~/.vimrc
  ln -s $DIR/zshrc ~/.zshrc

  echo "All linked up."
else
  echo "This script is intended to run in Linux!"
fi

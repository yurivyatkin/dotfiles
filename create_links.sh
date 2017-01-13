#!/bin/bash

UNAMESTR=`uname`
if [[ "$UNAMESTR" == 'Linux' ]]; then

  # Backup and delete existing links

  now=$(date +"%Y%m%d")
  BKPDIR=~/Backups/dotfiles/$now
  mkdir -p $BKPDIR

  mv ~/.bashrc $BKPDIR
  mv ~/.gitconfig $BKPDIR
  mv ~/.gitignore_global $BKPDIR
  mv ~/.bash_profile $BKPDIR
  mv ~/.tmux.conf $BKPDIR
  mv ~/.vimrc $BKPDIR
  mv ~/.zshrc $BKPDIR

  # Create symbolik links

  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  ln -s $DIR/bashrc ~/.bashrc
  ln -s $DIR/gitconfig ~/.gitconfig
  ln -s $DIR/gitignore_global ~/.gitignore_global
  ln -s $DIR/bash_profile ~/.bash_profile
  ln -s $DIR/tmux.conf ~/.tmux.conf
  ln -s $DIR/vimrc ~/.vimrc
  ln -s $DIR/zshrc ~/.zshrc

  echo "All linked up."
else
  echo "This script is intended to run in Linux!"
fi

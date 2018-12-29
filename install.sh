#! /bin/bash

# Get the current directory
DIR=`pwd`

# Profile
rm -f ~/.profile
ln -s $DIR/.profile ~/.profile

# Bash
rm -f ~/.bashrc ~/.bash_aliases ~/.bash_logout
ln -s $DIR/bash/.bashrc ~/.bashrc
ln -s $DIR/bash/.bash_aliases ~/.bash_aliases
ln -s $DIR/bash/.bash_logout ~/.bash_logout


# Emacs
rm -f ~/.emacs
rm -rf ~/.emacs.d
ln -s $DIR/emacs/.emacs ~/.emacs
ln -s $DIR/emacs/.emacs.d ~/.emacs.d




#!/bin/sh

[ ! -f $HOME/.vimrc ] && ln -nfs $HOME/dotfiles/vim/vimrc $HOME/.vimrc


#!/bin/sh

# 홈 디렉토리에 ".gitconfig", ".gitingore_global" 파일이 없으면, "dotfiles" 디렉토리에 있는 파일을 홈 디렉토리로 링크한다.
[ ! -f $HOME/.gitconfig ] && ln -nfs $HOME/dotfiles/.gitconfig $HOME/.gitconfig
[ ! -f $HOME/.gitignore_global ] && ln -nfs $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global

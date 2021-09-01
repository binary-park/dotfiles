#!/bin/sh

# 홈 디렉토리에 .hammerspoon 폴더가 없으면 링크한다.
[ ! -d $HOME/.hammerspoon] && ln -nfs $HOME/dotfiles/.hammerspoon $HOME/.hammerspoon

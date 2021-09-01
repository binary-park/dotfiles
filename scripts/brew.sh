#!/bin/sh

# 시스템에 Homebrew가 없으면 설치한다.
if [ ! $(which brew) ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Brewfile을 실행한다.
brew update
brew bundle --file=$HOME/dotfiles/Brewfile
brew cleanup
brew cask cleanup

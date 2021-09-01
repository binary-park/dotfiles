#!/bin/sh

# 시스템에 Homebrew가 없으면 설치한다.
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Brewfile을 실행한다.
brew update
brew bundle --file=$HOME/dotfiles/Brewfile
brew cleanup
brew cask cleanup

# 홈 디렉토리에 ".gitconfig", ".gitingore_global" 파일이 없으면, "dotfiles" 디렉토리에 있는 파일을 홈 디렉토리로 링크한다.
[ ! -f $HOME/.gitconfig ] && ln -nfs $HOME/dotfiles/.gitconfig $HOME/.gitconfig
[ ! -f $HOME/.gitignore_global ] && ln -nfs $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global

# oh-my-zsh 을 설치한다.
# ".zshrc" 파일을 링크한다.
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
[ ! -f $HOME/.zshrc ] && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
source $HOME/.zshrc

# 홈 디렉토리에 .hammerspoon 폴더가 없으면 링크한다.
[ ! -d $HOME/.hammerspoon] && ln -nfs $HOME/dotfiles/.hammerspoon $HOME/.hammerspoon

# SDKMAN 을 설치한다.
if [ ! -d $HOME/.sdkman ]; then
  curl -s "https://get.sdkman.io" | bash
  source $HOME/.zshrc
fi


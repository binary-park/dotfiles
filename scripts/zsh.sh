#!/bin/sh

# oh-my-zsh 을 설치한다.
[ ! -d $HOME/.oh-my-zsh ] && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# ".zshrc" 파일을 링크한다.
[ ! -f $HOME/.zshrc ] && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc

# 테마를 다운 받는다.
ZSH_THEME_P10K_PATH="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
[ ! -d $ZSH_THEME_P10K_PATH ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_THEME_P10K_PATH

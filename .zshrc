export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# zsh p10k 환경 설정
[ ! -d $HOME/dotfiles/.p10k.zsh ] && source $HOME/dotfiles/.p10k.zsh

# SDKMAN 환경 설정
export SDKMAN_DIR="$HOME/.sdkman"
[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

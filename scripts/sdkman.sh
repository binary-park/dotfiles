#!/bin/sh

# SDKMAN 을 설치한다.
if [ ! -d $HOME/.sdkman ]; then
  curl -s "https://get.sdkman.io" | bash
  source $HOME/.zshrc
fi

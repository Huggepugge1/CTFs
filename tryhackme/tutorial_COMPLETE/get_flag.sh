#!/bin/zsh
source ~/.zshrc

curl $1 -s | grep -oE "flag{.*}" --color=none

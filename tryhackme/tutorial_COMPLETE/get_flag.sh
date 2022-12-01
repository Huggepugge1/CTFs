#!/bin/zsh
source ~/.zshrc
curl 10.10.64.140 -s | grep -oE "flag{.*}" --color=none

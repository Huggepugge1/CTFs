#!/bin/zsh
source ~/.zshrc
curl -s http://saturn.picoctf.net:64710/$(curl -s http://saturn.picoctf.net:64710/robots.txt | grep == | base64 -d)

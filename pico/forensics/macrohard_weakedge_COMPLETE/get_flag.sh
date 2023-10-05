#!/bin/zsh
source ~/.zshrc
binwalk -e --quiet Forensics\ is\ fun.pptm
python3 solve.py
rm -rf _Forensics\ is\ fun.pptm.extracted

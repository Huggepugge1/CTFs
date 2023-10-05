#!/bin/zsh
source ~/.zshrc
python3 -c "import enigma;print(enigma.find_in_binary('static')[0][1].decode('utf-8'))"

#!/bin/bash
echo "happychance" > input.txt
python3 bloat.flag.py < input.txt | grep -oE "picoCTF{.*?}" --color=none
rm input.txt

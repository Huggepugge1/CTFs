#!/bin/bash

echo "batteryhorse" > input.txt
output=$(python3 unpackme.flag.py < input.txt | grep -oE "picoCTF{.*?}" --color=none)

echo $output > flag.txt
rm input.txt

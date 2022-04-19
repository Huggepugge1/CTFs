#!/usr/bin/env python3

with open("anthem.flag.txt", "r") as f:
    while f:
        line = f.readline()
        if "picoCTF" in line:
            print(line)
            exit(0)

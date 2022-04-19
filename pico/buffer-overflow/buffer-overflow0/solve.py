#!/usr/bin/env python3

from pwn import *
import sys

if len(sys.argv) != 2:
    print("Usage: solve.py [input]")
    exit(1)

nc = remote("saturn.picoctf.net", 51110)
nc.recvuntil(b"Input: ")
nc.send(bytes("{}\n".format(sys.argv[1]), 'UTF-8'))
print(nc.recvline().decode("UTF-8"))
nc.close()

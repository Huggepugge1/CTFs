from pwn import *

host, port = "saturn.picoctf.net", 56981

p = remote(host, port)
p.recvS()
for i in range(5):
    p.sendline(b"1")
    log.info(p.recvS())
    p.sendline(b"rockpaperscissors")

p.recvS()
log.success(p.recvS())

p.close()

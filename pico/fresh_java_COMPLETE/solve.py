#!/usr/bin/env python3

ans = ""
with open("KeygenMe.java", "r") as f:
    s = f.read()
    s = [i.split("'")[1] for i in s.split("if")[2:]]
    for i in s:
        ans += i

print(f"{ans[::-1]}")

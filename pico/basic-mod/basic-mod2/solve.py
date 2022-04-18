#!/usr/bin/env python3

maps = [c for c in "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"]

with open("message.txt", "r") as file:
    data = [int(c) for c in file.read().split()]
    for c in range(len(data)):
        for B in range(data[c]):
            if data[c] * B % 41 == 1:
                data[c] = B
                break
    print(f"picoCTF{{{''.join(maps[c - 1] for c in data)}}}") # we print maps[c - 1] because in the challenge prompt it said that the alphabet started at one so the array becomes shifted.

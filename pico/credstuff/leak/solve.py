#!/usr/bin/env python3

with open("usernames.txt", "r") as u:
    with open("passwords.txt", "r") as p:
        username = True
        while username:
            username = u.readline()
            password = p.readline()
            if "cultiris" in username:
                print(password)

# Credsutuff

Link: https://play.picoctf.org/practice/challenge/262?originalEvent=70&page=1

This challenge was very easy. First i created a python script to find the password.

```python3
#!/usr/bin/env python3

with open("usernames.txt", "r") as u:
    with open("passwords.txt", "r") as p:
        username = True
        while username:
            username = u.readline()
            password = p.readline()
            if "cultiris" in username:
                print(password)
```

When I ran the script i got the string `cvpbPGS{P7e1S_54I35_71Z3}`.

An alternative to python is awk. I wrote this quick awk script to do this: 
`awk '/cultiris/ { x = FNR } { if (FNR == x) print $0 }' usernames.txt passwords.txt`

If you don't know awk, /cultiris/ is the same as grep cultiris. Then we get the line of the file (FNR) and store it to x. Lastly we print the line if the linenubmer matches x.

I could tell that this is most likely a caesar cipher so I just went to https://www.dcode.fr/caesar-cipher and decoded it there.

Flag: `picoCTF{C7r1F_54V35_71M3}`

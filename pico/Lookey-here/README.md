# Lookey here

Link: https://play.picoctf.org/practice/challenge/279?originalEvent=70&page=2

This challenge is about finding information in big files. The trick is to use some sort of tool for searching for strings.

---
Solution:

Grep: `cat anthem.flag.txt |  grep picoCTF`

awk: `awk '/picoCTF/ { print }' anthem.flag.txt`

```python
#!/usr/bin/env python3

with open("anthem.flag.txt", "r") as f:
    while f:
        line = f.readline()
        if "picoCTF" in line:
            print(line)
            exit(0)
```

Flag: `picoCTF{gr3p_15_@w3s0m3_2116b979}`

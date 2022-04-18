# Basic mod 1

link: [https://play.picoctf.org/practice/challenge/253?originalEvent=70&page=1]

In the description it says "Take each number mod 37 and map it to the following character set: 0-25 is the alphabet (uppercase), 26-35 are the decimal digits, and 36 is an underscore. Wrap your decrypted message in the picoCTF flag format (i.e. picoCTF{decrypted_message})"

I created a python script to do all of that for me:

```python
maps = [i for i in "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"]

with open("message.txt", "r") as file:
    data = [int(c) for c in file.read().split()]
    for c in range(len(data)):
        data[c] %= 37

    print(f"picoCTF{{{''.join(maps[c] for c in data)}}}")
```

That gives the flag: `picoCTF{R0UND_N_R0UND_B6B25531`

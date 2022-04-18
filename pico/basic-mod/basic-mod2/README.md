# Basic mod 2

This time, the challenge promptis a little different: "Take each number mod 41 and find the modular inverse for the result. Then map to the following character set: 1-26 are the alphabet, 27-36 are the decimal digits, and 37 is an underscore."

The catch is that we cannot just take each input mod 41 and print it, we have to find the inverse module (B). We find B by the calculating the equation `A * B mod 41 = 1` where A is every number in the input.
Link to inverse modulo tutorial: https://www.khanacademy.org/computing/computer-science/cryptography/modarithmetic/a/modular-inverses

I created a python script to do this:

```python
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
```

When you run the script you get `picoCTF{1NV3R53LY_H4RD_8A05D939}`

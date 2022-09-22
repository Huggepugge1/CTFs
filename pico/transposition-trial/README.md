# Transposition-trial
Link: https://play.picoctf.org/practice/challenge/312?originalEvent=70&page=3

### Solution

The challenge talks about 3 blocks so i splitted the string in three equal segments
```py
string = "heTfl g as iicpCTo{7F4NRP051N5_16_35P3X51N3_V9AAB1F8}7"
str1 = string[0:18]
str2 = string[18: 36]
str3 = string[36:]
```

Then I went thru the string and pieced the first part together:
`heTfl g as iicpCT` --> `The flag is picoCT`

That gives an array of the positioning of every character.
`pos = [2, 0, 1, 5, 3, 4, 8, 6, 7, 11, 9, 10, 14, 12, 13, 17, 15, 16]`

Then just use the same on every piece of string.

Full script:
```py
string = "heTfl g as iicpCTo{7F4NRP051N5_16_35P3X51N3_V9AAB1F8}7"
str1 = string[0:18]
str2 = string[18: 36]
str3 = string[36:]

pos = [2, 0, 1, 5, 3, 4, 8, 6, 7, 11, 9, 10, 14, 12, 13, 17, 15, 16]

ans = ""
for i in pos:
    ans += string[i]
for i in pos:
    ans += string[i+18]
for i in pos:
    ans += string[i+36]

print(ans)
```

Flag: picoCTF{7R4N5P051N6_15_3XP3N51V3_A9AFB178}

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

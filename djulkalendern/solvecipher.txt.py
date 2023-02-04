with open("cipher.txt", "r") as f:
    cipher = f.read().strip()

for step in range(28, 29):
    res = ''
    for i in range(step):
        res += cipher[i::step]
    print(max(res.split("·"), key=len))

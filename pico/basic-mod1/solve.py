maps = [i for i in "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_"]

with open("message.txt", "r") as file:
    data = [int(c) for c in file.read().split()]
    for c in range(len(data)):
        data[c] %= 37

    print(''.join(maps[c] for c in data))

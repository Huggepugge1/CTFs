import re

with open("index.js", "r") as f:
    data = f.read()
    for i in range(2):
        x = re.findall("const ... = s => false", data)
        y = [i[6:9] for i in x]
        for i in y:
            data = re.sub(f"{i}\(.\)", "false", data)
        data = re.sub("|| false", "", data)
        data = re.sub("false ||", "", data)
        data = re.sub("s\[\d*\] == '.' && false\s*\|\|", "", data)
        data = re.sub("\|\|\s*s\[\d*\] == '.' && false", "", data)
    
    z = []
    for i in range(41):
        z.append(re.findall(f"s\[{i}\] == \'.\'", data)[0][8 + len(str(i))])

    print(''.join(z))

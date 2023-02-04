from PIL import Image
import matplotlib.pyplot as plt

ax = plt.figure().add_subplot(projection="3d")

img = Image.open("cipher.png")

for i in list(img.getdata()):
    ax.scatter(i[0], i[1], i[2])

plt.show()

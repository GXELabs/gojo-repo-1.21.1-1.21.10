from PIL import Image

img = Image.open("levitation.webp")
img = img.resize((16, 16), Image.Resampling.NEAREST)
img.save("levitate_icon_small.png")
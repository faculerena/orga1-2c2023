def find_max_red(pixels, num_pixels):
    max_red = 0
    for i in range(num_pixels):
        pixel = pixels[i] # RRGGBB
        red = (pixel >> 16) & 0xFF
        if red > max_red:
            max_red = red
    return hex(max_red)

if __name__ == "__main__":
    print(find_max_red([
        0x112233,
        0x445566,
        0x778899,
        0xAABBCC,
        0xDDEEFF,
    ], 5))

import time
import board
import neopixel
from random import randint
# Declare Any Global Variables

def main():
    print("Starting Code Challenge")
    # Declare Any main() Variables - (Not Global)
    
    # list 'pixels' of indexable neopixles
    pixels = neopixel.NeoPixel(board.NEOPIXEL, 10)
    pixels.fill((0, 0, 0))
    while True:
        # indexes the first element of the 'pixels' list and points to the 
        # first Neopixel in the 'pixels' list
        pixels[0]=(255, 0, 0)
        # indexes the 2nd element of the 'pixels' list and points to the 
        # 2nd (and only) Neopixel in the 'pixels' list
        pixels[1]=(0, 255, 0)
        # indexes the 3rd element of the 'pixels' list and points to the 
        # 3rd (and only) Neopixel in the 'pixels' list
        pixels[2]=(0, 0, 255)
        time.sleep(0.5)
        # calls the method .fill() to fill all the values of all the addressable Neopixels
        pixels.fill((0, 0, 0))
        time.sleep(0.5)
    print("Ending Code Challenge")

main()

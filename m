import RPi.GPIO as GPIO
import time

# Set the GPIO mode to BCM
GPIO.setmode(GPIO.BCM)

# Set the pin number
pin = 13

# Set the pin as an output
GPIO.setup(pin, GPIO.OUT)

try:
    while True:
        # Turn the LED on
        GPIO.output(pin, GPIO.HIGH)
        time.sleep(1)  # Wait for 1 second
        
        # Turn the LED off
        GPIO.output(pin, GPIO.LOW)
        time.sleep(1)  # Wait for 1 second

except KeyboardInterrupt:
    # Cleanup GPIO on keyboard interrupt
    GPIO.cleanup()

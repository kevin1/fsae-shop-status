# FSAE Shop Status
A Rails app to see whether people are working in the Columbia Formula SAE shop. 

## Installation & Usage
### Hardware
You need this hardware to use this app:
- Raspberry Pi (tested with Raspbian)
- Hall-effect sensor
- Magnet
- Breadboard
- Duct tape

The [Raspberry Pi GPIO Pinout](http://elinux.org/RPi_Low-level_peripherals#General_Purpose_Input.2FOutput_.28GPIO.29) is useful.

1. Connect the hall-effect sensor to the GPIO's power and an input. Measure the voltage of the output with and without your magnet to make sure it's within 0-3.3 V. (The Pi is not 5-V tolerant! Also, Raspberry Pi's GPIOs have a threshold of about 1.2 V.)
2. Tape the sensor to your door frame.
3. Tape the magnet to your door so it lines up with the sensor.

### Software
1. Install Raspbian.
2. Install Ruby (I used 2.0.0) and Rails (4.0.0). You should probably use RVM.
3. Install node.js, because Rails needs a JavaScript runtime: `sudo apt-get install nodejs`
4. Install WiringPi using [these instructions](https://projects.drogon.net/raspberry-pi/wiringpi/download-and-install/).

Now, just `cd` into the directory for this app, run `rails server`, and visit `http://your-raspberry-pi:3000`

## Author
Kevin Chen (@kevinchen on Twitter)

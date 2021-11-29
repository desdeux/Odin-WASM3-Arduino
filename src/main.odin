package main

import "arduino"

Led: u32

setup :: proc "c" () {
    Led = arduino.getPinLED()
    arduino.pinMode(Led, 1)

    arduino.printLn("Odin is running 😎")
}

loop :: proc "c" () {
    time := arduino.millis()
    // arduino.printLn(time)
    arduino.digitalWrite(Led, arduino.HIGH)
    arduino.delay(200)
    arduino.digitalWrite(Led, arduino.LOW)
    arduino.delay(200)
    arduino.digitalWrite(Led, arduino.HIGH)
    arduino.delay(200)
    arduino.digitalWrite(Led, arduino.LOW)
    arduino.delay(400)
}

@export
start :: proc "c" ()  {
    setup()
    for {
        loop()
    }
}
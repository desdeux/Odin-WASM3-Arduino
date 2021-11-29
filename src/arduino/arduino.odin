package arduino

foreign import arduino "arduino"

LOW :: 0
HIGH :: 1

INPUT :: 0
OUTPUT :: 1
INPUT_PULLUP :: 2

@(default_calling_convention="c")
foreign arduino {
    millis :: proc() -> u32 ---
    delay :: proc(u32) ---
    pinMode :: proc(u32, u32) ---
    digitalWrite :: proc(u32, u32) ---
    getPinLED :: proc() -> u32 ---
    print :: proc(string) ---
}

printLn :: proc "c" (text: string) {
    print(text)
    print("\n")
}
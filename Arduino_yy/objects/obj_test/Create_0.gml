// this is copy-pasted from the original example
ard = arduino_create("COM3", 9600)
data = ard < 0 ? "Failed to open a connection" : ""
res = string(ard)
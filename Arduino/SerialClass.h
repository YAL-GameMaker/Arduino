//Serial Class from http://playground.arduino.cc/Interfacing/CPPWindows

#ifndef SERIALCLASS_H_INCLUDED
#define SERIALCLASS_H_INCLUDED

#define ARDUINO_WAIT_TIME 2000

#include <windows.h>
#include <stdio.h>
#include <stdlib.h>

class Serial
{
private:
    //Serial comm handler
    HANDLE hSerial = NULL;
    //Connection status
    bool connected = false;
    //Get various information about the connection
    COMSTAT status{};
    //Keep track of last error
    DWORD errors = 0;

public:
    Serial() {};
    //Initialize Serial communication with the given COM port
    void Init(char* portName, unsigned long baud);
    //Close the connection
    ~Serial();
    //Read data in a buffer, if nbChar is greater than the
    //maximum number of bytes available, it will return only the
    //bytes available. The function return -1 when nothing could
    //be read, the number of bytes actually read.
    int ReadData(char* buffer, unsigned int nbChar);
    //Writes data from a buffer through the Serial connection
    //return true on success.
    bool WriteData(char* buffer, unsigned int nbChar);
    //Check if we are actually connected
    bool IsConnected();


};

#endif // SERIALCLASS_H_INCLUDED

#include "SerialClass.h"
#include <vector>

#define DLLEXPORT extern "C" __declspec(dllexport)
std::vector<Serial*> arduinos;

//Creates a new serial connection and returns the index in the vector or -1 if the connection failed.
DLLEXPORT double arduinoCreate(char* com, double baud)
{
	Serial* SP = new Serial(com, baud);
	if (SP->IsConnected()) {
		arduinos.push_back(SP);
		return arduinos.size() - 1;
	}
	else {
		delete SP;
	}
	return -1;
}

//Checks if the arduino is connected, returns 1 for true, 0 for false, and -1 if the arduino does not exist.
DLLEXPORT double arduinoConnected(double index)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos.at(index);
        if (SP->IsConnected())
            return 1;
        else
            return 0;
    }
    return -1;
}

//Reads data from the arduino, returns the data on success or an empty string on failure.
DLLEXPORT char* arduinoRead(double index, double length)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos.at(index);
        if (SP->IsConnected()) {
            char* data = new char[static_cast<int>(length)];
            int bytes = SP->ReadData(data, length);
            if (bytes < 0) {
                return ""; //No data returned
            }
            return data; //Success
        }
        return ""; //Not connected
    }
    return ""; //Arduino does not exist
}

//Reads data until a delimiter, returns the data on success or an empty string on failure.
DLLEXPORT char* arduinoReadUntil(double index, char* delim)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos.at(index);
        if (SP->IsConnected()) {
            std::vector<char> buffer;
            char* data = new char[static_cast<int>(1)];
            int bytes = SP->ReadData(data, 1);
            while(data[0] != delim[0]) {
                if (bytes < 0) {
                    return ""; //No data returned
                }
                else {
                    buffer.push_back(data[0]);
                }
                bytes = SP->ReadData(data, 1);
            }
            char* str = new char[buffer.size()];
            for (int i = 0; i < buffer.size(); i++) {
                str[i] = buffer[i];
            }
            delete data;
            return str; //Success
        }
        return ""; //Not connected
    }
    return ""; //Arduino does not exist
}

//Reads data until a new line, returns the data on success or an empty string on failure.
DLLEXPORT char* arduinoReadLine(double index)
{
    char* delim = new char[1];
    delim[0] = '\n';
    return arduinoReadUntil(index, delim);
}

//Writes data to the arduino, returns 1 if successful, 0 if failure. and negative on error.
DLLEXPORT double arduinoWrite(double index, char* buffer, double length)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos.at(index);
        if (SP->IsConnected()) {
            if (SP->WriteData(buffer, length))
                return 1; //Success
            else
                return 0; //Failure
        }
        return -2; //Not connected
    }
    return -1; //Arduino does not exist
}

//Deletes an arduino keeping all indices intact, returns 1 on success and 0 on failure.
DLLEXPORT double arduinoDelete(double index)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos.at(index);
        delete SP;
        arduinos.at(index) = nullptr;
        return 1;
    }
    return 0;
}

//Destroys all arduinos and frees memory.
DLLEXPORT double arduinoDestroy()
{
    for (int i = 0; i < arduinos.size(); i++) {
        if (arduinos.at(i) != nullptr) {
            Serial* SP = arduinos.at(i);
            delete SP;
            arduinos.at(i) = nullptr;
        }
    }
    arduinos.clear();
    return 1;
}

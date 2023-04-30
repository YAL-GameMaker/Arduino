#include "stdafx.h"

#include "SerialClass.h"
#include "tiny_array.h"
#include <vector>

static tiny_array<Serial*> arduinos;
static tiny_string result;
static tiny_array<char> result_acc;

#define clamp(val, vMin, vMax) (val < vMin ? vMin : (val > vMax ? vMax : val))

///Creates a new serial connection and returns the index in the vector or -1 if the connection failed.
dllx double arduino_create(char* com, double baud)
{
    Serial* SP = malloc_arr<Serial>(1);
    SP->Init(com, baud);
    if (SP->IsConnected()) {
        arduinos.add(SP);
        return arduinos.size() - 1;
    } else {
        free(SP);
    }
    return -1;
}

///Checks if the arduino is connected, returns 1 for true, 0 for false, and -1 if the arduino does not exist.
dllx double arduino_connected(double index)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected())
            return 1;
        else
            return 0;
    }
    return -1;
}

#pragma region read
///Reads data from the arduino, returns the data on success or an empty string on failure.
dllx char* arduino_read(double index, double length)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected()) {
            char* data = result.prepare(length + 1);
            data[(size_t)length] = 0;
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

///Reads data until a delimiter, returns the data on success or an empty string on failure.
dllx char* arduino_read_to(double index, char* delim_str)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected()) {
            char data[1]{};
            int bytes = SP->ReadData(data, 1);
            result_acc.resize(0);
            auto delim = (uint8_t)delim_str[0];
            while (data[0] != delim) {
                if (bytes < 0) {
                    return ""; //No data returned
                } else {
                    result_acc.add(data[0]);
                }
                bytes = SP->ReadData(data, 1);
            }
            result_acc.add(0);
            return result_acc.data(); //Success
        }
        return ""; //Not connected
    }
    return ""; //Arduino does not exist
}

///Reads data until a new line, returns the data on success or an empty string on failure.
dllx char* arduino_read_line(double index)
{
    char delim[] = "\n";
    return arduino_read_to(index, delim);
}

dllg tiny_optional<const char*> arduino_read_to_new(double index, double delim_u8) {
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected()) {
            uint8_t data[1]{};
            int bytes = SP->ReadData((char*)data, 1);
            result_acc.resize(0);
            auto delim = (uint8_t)delim_u8;
            while (data[0] != delim) {
                if (bytes < 0) return {}; //No data returned
                result_acc.add(data[0]);
                bytes = SP->ReadData((char*)data, 1);
            }
            result_acc.add(0);
            return result_acc.data(); //Success
        }
        return {}; //Not connected
    }
    return {}; //Arduino does not exist
}

/// Reads until an `\n`
dllg tiny_optional<const char*> arduino_read_line_new(double index) {
    return arduino_read_to_new(index, '\n');
}

/// Reads bytes to a buffer, returns number of bytes read (-1, -2 special)
dllg int arduino_read_buffer(double index, gml_buffer buf, int pos, int len) {
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected()) {
            int buf_size = buf.size();
            int start = clamp(pos, 0, buf_size);
            int till = pos + len;
            till = clamp(till, 0, buf_size);
            int bytes = SP->ReadData((char*)(buf.data() + start), till - start);
            return bytes;
        }
        return -2; //Not connected
    }
    return -1; //Arduino does not exist
}

dllg int arduino_read_buffer_to(double index, gml_buffer buf, int pos, int len, int delim_u8) {
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected()) {
            int buf_size = buf.size();
            int start = clamp(pos, 0, buf_size);
            int till = pos + len;
            till = clamp(till, 0, buf_size);
            if (start >= till) return 0;
            int curr = start;
            auto out = buf.data();

            uint8_t data[1]{};
            int bytes = SP->ReadData((char*)data, 1);
            while (data[0] != delim_u8) {
                if (bytes < 0) break;
                out[curr++] = data[0];
                if (curr >= till) break;
                bytes = SP->ReadData((char*)data, 1);
            }
            return curr - start;
        }
        return -2; //Not connected
    }
    return -1; //Arduino does not exist
}

/// Reads a NUL-terminated string
dllg tiny_optional<const char*> arduino_read_string(double index) {
    return arduino_read_to_new(index, 0);
}

dllg tiny_optional<const char*> arduino_read_text(double index, double length) {
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected()) {
            char* data = result.prepare(length + 1);
            int bytes = SP->ReadData(data, length);
            if (bytes < 0) return {}; //No data returned
            data[bytes] = 0;
            return data; //Success
        }
        return {}; //Not connected
    }
    return {}; //Arduino does not exist
}

static bool arduino_read_impl(double index, void* out, uint32_t len) {
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected()) {
            int bytes = SP->ReadData((char*)out, len);
            return bytes >= 0;
        }
        return false; //Not connected
    }
    return false; //Arduino does not exist
}
template<typename T> static inline bool arduino_read_auto(double index, T& out) {
    return arduino_read_impl(index, &out, sizeof(out));
}

///
dllg tiny_optional<int8_t> arduino_read_s8(double index) {
    int8_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}
///
dllg tiny_optional<uint8_t> arduino_read_u8(double index) {
    uint8_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg tiny_optional<int16_t> arduino_read_s16(double index) {
    int16_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}
///
dllg tiny_optional<uint16_t> arduino_read_u16(double index) {
    uint16_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg tiny_optional<int32_t> arduino_read_s32(double index) {
    int32_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}
///
dllg tiny_optional<uint32_t> arduino_read_u32(double index) {
    uint32_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg tiny_optional<int64_t> arduino_read_s64(double index) {
    int64_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg tiny_optional<float> arduino_read_f32(double index) {
    float val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg tiny_optional<float> arduino_read_f64(double index) {
    double val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

#pragma endregion

#pragma region write

static int arduino_write_impl(double index, const void* data, uint32_t len) {
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        if (SP->IsConnected()) {
            if (SP->WriteData((char*)data, len))
                return 1; //Success
            else
                return 0; //Failure
        }
        return -2; //Not connected
    }
    return -1; //Arduino does not exist
}
template<typename T> static inline int arduino_write_auto(double index, T& value) {
    return arduino_write_impl(index, &value, sizeof(value));
}

///Writes data to the arduino, returns 1 if successful, 0 if failure. and negative on error.
dllx double arduino_write(double index, char* buffer, double length) {
    return arduino_write_impl(index, buffer, length);
}

///
dllx double arduino_write_s8(double index, double value) {
    int8_t val = (int8_t)clamp(value, INT8_MIN, INT8_MAX);
    return arduino_write_auto(index, val);
}
///
dllx double arduino_write_u8(double index, double value) {
    byte val = (byte)clamp(value, 0, UINT8_MAX);
    return arduino_write_auto(index, val);
}

///
dllx double arduino_write_s16(double index, double value) {
    int16_t val = (int16_t)clamp(value, INT16_MIN, INT16_MAX);
    return arduino_write_auto(index, val);
}
///
dllx double arduino_write_u16(double index, double value) {
    uint16_t val = (uint16_t)clamp(value, 0, UINT16_MAX);
    return arduino_write_auto(index, val);
}

///
dllx double arduino_write_s32(double index, double value) {
    int32_t val = (int32_t)clamp(value, INT32_MIN, INT32_MAX);
    return arduino_write_auto(index, val);
}
///
dllx double arduino_write_u32(double index, double value) {
    uint32_t val = (uint32_t)clamp(value, 0, UINT32_MAX);
    return arduino_write_auto(index, val);
}

dllg int arduino_write_s64(double index, int64_t value) {
    int64_t val = clamp(value, INT64_MIN, INT64_MAX);
    return arduino_write_auto(index, val);
}

///
dllx double arduino_write_f32(double index, double value) {
    float val = (float)value;
    return arduino_write_auto(index, val);
}
///
dllx double arduino_write_f64(double index, double value) {
    double val = value;
    return arduino_write_auto(index, val);
}

/// writes a string (NUL-terminated)
dllx double arduino_write_string(double index, const char* string) {
    size_t len = 0;
    while (string[len]) len++;
    return arduino_write_impl(index, string, len + 1);
}

/// writes a string (unterminated)
dllx double arduino_write_text(double index, const char* string) {
    size_t len = 0;
    while (string[len]) len++;
    return arduino_write_impl(index, string, len);
}

dllg int arduino_write_buffer(int index, gml_buffer buf, int pos, int len) {
    int buf_size = buf.size();
    int start = clamp(pos, 0, buf_size);
    int till = pos + len;
    till = clamp(till, 0, buf_size);
    return arduino_write_impl(index, buf.data() + start, till - start);
}

#pragma endregion

///Deletes an arduino keeping all indices intact, returns 1 on success and 0 on failure.
dllx double arduino_delete(double index)
{
    if (index < arduinos.size() && index >= 0) {
        Serial* SP = arduinos[index];
        free(SP);
        arduinos[index] = nullptr;
        return 1;
    }
    return 0;
}

///Destroys all arduinos and frees memory.
dllx double arduino_destroy()
{
    for (int i = 0; i < arduinos.size(); i++) {
        if (arduinos[i] != nullptr) {
            Serial* SP = arduinos[i];
            free(SP);
            arduinos[i] = nullptr;
        }
    }
    arduinos.resize(0);
    return 1;
}

static void init() {
    arduinos.init();
    result.init();
    result_acc.init();
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD  ul_reason_for_call, LPVOID lpReserved) {
    if (ul_reason_for_call == DLL_PROCESS_ATTACH) init();
	return TRUE;
}

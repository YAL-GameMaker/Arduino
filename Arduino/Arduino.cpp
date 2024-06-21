/// @author YellowAfterlife

#include "stdafx.h"

#include "SerialClass.h"
#include <vector>
#include <string>
#include <sstream>
#include <optional>

static std::vector<Serial*> arduinos{};
static std::string result{};
static std::stringstream result_acc{};

#define clamp(val, vMin, vMax) (val < vMin ? vMin : (val > vMax ? vMax : val))

static Serial* arduino_find(double index) {
    if (index < 0) return nullptr;
    auto i = (size_t)index;
    if (i >= arduinos.size()) return nullptr;
    return arduinos[i];
}

///Creates a new serial connection and returns the index in the vector or -1 if the connection failed.
dllx double arduino_create(char* com, double baud)
{
    Serial* SP = malloc_arr<Serial>(1);
    SP->Init(com, (uint32_t)baud);
    if (SP->IsConnected()) {
        arduinos.push_back(SP);
        return (double)(arduinos.size() - 1);
    } else {
        free(SP);
    }
    return -1;
}

///Deletes an arduino keeping all indices intact, returns 1 on success and 0 on failure.
dllx double arduino_delete(double index)
{
    if (index < 0) return 0;

    auto i = (size_t)index;
    if (i >= arduinos.size()) return 0;

    Serial* SP = arduinos[i];
    if (!SP) return 0;

    free(SP);
    arduinos[i] = nullptr;
    return 1;
}

///Destroys all arduinos and frees memory.
dllx double arduino_destroy()
{
    for (size_t i = 0; i < arduinos.size(); i++) {
        if (arduinos[i] != nullptr) {
            Serial* SP = arduinos[i];
            free(SP);
            arduinos[i] = nullptr;
        }
    }
    arduinos.resize(0);
    return 1;
}

///Checks if the arduino is connected, returns 1 for true, 0 for false, and -1 if the arduino does not exist.
dllx double arduino_connected(double index)
{
    auto SP = arduino_find(index);
    if (SP == nullptr) return -1;
    return SP->IsConnected() ? 1 : 0;
}

#pragma region read
///Reads data from the arduino, returns the data on success or an empty string on failure.
dllx const char* arduino_read(double index, double length)
{
    auto SP = arduino_find(index);
    if (!SP || !SP->IsConnected()) return "";

    auto ulength = length > 0 ? (uint32_t)length : 0u;
    result.resize(ulength + 1);
    char* data = result.data();
    data[ulength] = 0;
    int bytes = SP->ReadData(data, ulength);
    if (bytes < 0) {
        return ""; //No data returned
    }
    return data; //Success
}

///Reads data until a delimiter, returns the data on success or an empty string on failure.
dllx const char* arduino_read_to(double index, char* delim_str)
{
    auto SP = arduino_find(index);
    if (!SP || !SP->IsConnected()) return "";

    char data[1]{};
    int bytes = SP->ReadData(data, 1);
    result_acc.clear();
    auto delim = (uint8_t)delim_str[0];
    while (data[0] != delim) {
        if (bytes < 0) {
            return ""; //No data returned
        } else {
            result_acc << data[0];
        }
        bytes = SP->ReadData(data, 1);
    }
    static std::string result{};
    result = result_acc.str();
    return result.c_str(); //Success
}

///Reads data until a new line, returns the data on success or an empty string on failure.
dllx const char* arduino_read_line(double index)
{
    char delim[] = "\n";
    return arduino_read_to(index, delim);
}

dllg std::optional<const char*> arduino_read_to_new(double index, double delim_u8) {
    auto SP = arduino_find(index);
    if (!SP || !SP->IsConnected()) return {};

    uint8_t data[1]{};
    int bytes = SP->ReadData((char*)data, 1);
    result_acc.clear();
    auto delim = (uint8_t)delim_u8;
    while (data[0] != delim) {
        if (bytes < 0) return {}; //No data returned
        result_acc << data[0];
        bytes = SP->ReadData((char*)data, 1);
    }
    static std::string result{};
    result = result_acc.str();
    return result.c_str(); //Success
}

/// Reads until an `\n`
dllg std::optional<const char*> arduino_read_line_new(double index) {
    return arduino_read_to_new(index, '\n');
}

/// Reads bytes to a buffer, returns number of bytes read (-1, -2 special)
dllg int arduino_read_buffer(double index, gml_buffer buf, int pos, int len) {
    auto SP = arduino_find(index);
    if (!SP) return -1;
    if (!SP->IsConnected()) return -2;

    int buf_size = buf.size();
    int start = clamp(pos, 0, buf_size);
    int till = pos + len;
    till = clamp(till, 0, buf_size);
    int bytes = SP->ReadData((char*)(buf.data() + start), till - start);
    return bytes;
}

dllg int arduino_read_buffer_to(double index, gml_buffer buf, int pos, int len, int delim_u8) {
    auto SP = arduino_find(index);
    if (!SP) return -1;
    if (!SP->IsConnected()) return -2;

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

/// Reads a NUL-terminated string
dllg std::optional<const char*> arduino_read_string(double index) {
    return arduino_read_to_new(index, 0);
}

dllg std::optional<const char*> arduino_read_text(double index, double length) {
    auto SP = arduino_find(index);
    if (!SP || !SP->IsConnected()) return {};

    auto ulength = length > 0 ? (uint32_t)length : 0u;
    result.resize(ulength);
    char* data = result.data();
    int bytes = SP->ReadData(data, ulength);
    if (bytes < 0) return {}; //No data returned
    data[bytes] = 0;
    return data; //Success
}

static bool arduino_read_impl(double index, void* out, uint32_t len) {
    auto SP = arduino_find(index);
    if (!SP || !SP->IsConnected()) return false;

    int bytes = SP->ReadData((char*)out, len);
    return bytes >= 0;
}
template<typename T> static inline bool arduino_read_auto(double index, T& out) {
    return arduino_read_impl(index, &out, sizeof(out));
}

///
dllg std::optional<int8_t> arduino_read_s8(double index) {
    int8_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}
///
dllg std::optional<uint8_t> arduino_read_u8(double index) {
    uint8_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg std::optional<int16_t> arduino_read_s16(double index) {
    int16_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}
///
dllg std::optional<uint16_t> arduino_read_u16(double index) {
    uint16_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg std::optional<int32_t> arduino_read_s32(double index) {
    int32_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}
///
dllg std::optional<uint32_t> arduino_read_u32(double index) {
    uint32_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg std::optional<int64_t> arduino_read_s64(double index) {
    int64_t val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg std::optional<float> arduino_read_f32(double index) {
    float val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

///
dllg std::optional<double> arduino_read_f64(double index) {
    double val = {};
    if (arduino_read_auto(index, val)) return val;
    return {};
}

#pragma endregion

#pragma region write

static int arduino_write_impl(double index, const void* data, uint32_t len) {
    auto SP = arduino_find(index);
    if (!SP) return -1;
    if (!SP->IsConnected()) return -2;

    return SP->WriteData((char*)data, len) ? 1 : 0;
}
template<typename T> static inline int arduino_write_auto(double index, T& value) {
    return arduino_write_impl(index, &value, sizeof(value));
}

///Writes data to the arduino, returns 1 if successful, 0 if failure. and negative on error.
dllx double arduino_write(double index, char* buffer, double length) {
    return arduino_write_impl(index, buffer, length > 0 ? (uint32_t)length : 0);
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
    int64_t val = value;
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
    auto len = (uint32_t)strlen(string);
    return arduino_write_impl(index, string, len + 1);
}

/// writes a string (unterminated)
dllx double arduino_write_text(double index, const char* string) {
    auto len = (uint32_t)strlen(string);
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

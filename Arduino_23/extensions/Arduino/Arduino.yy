{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": 113497714299118,
  "extensionVersion": "1.0.0",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2019-12-12T01:34:29",
  "license": "Proprietary",
  "description": "",
  "helpfile": "",
  "iosProps": true,
  "tvosProps": false,
  "androidProps": true,
  "installdir": "",
  "files": [
    {"filename":"Arduino.dll","origname":"extensions\\Arduino.dll","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"externalName":"arduino_create","kind":1,"help":"arduino_create(com, baud) : Creates a new serial connection and returns the index in the vector or -1 if the connection failed.","hidden":false,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_create","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_delete","kind":1,"help":"arduino_delete(index) : Deletes an arduino keeping all indices intact, returns 1 on success and 0 on failure.","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_delete","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_destroy","kind":1,"help":"arduino_destroy() : Destroys all arduinos and frees memory.","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"arduino_destroy","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_connected","kind":1,"help":"arduino_connected(index) : Checks if the arduino is connected, returns 1 for true, 0 for false, and -1 if the arduino does not exist.","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_connected","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read","kind":1,"help":"arduino_read(index, length) : Reads data from the arduino, returns the data on success or an empty string on failure.","hidden":false,"returnType":1,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_to","kind":1,"help":"arduino_read_to(index, delim_str) : Reads data until a delimiter, returns the data on success or an empty string on failure.","hidden":false,"returnType":1,"argCount":2,"args":[
            2,
            1,
          ],"resourceVersion":"1.0","name":"arduino_read_to","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_line","kind":1,"help":"arduino_read_line(index) : Reads data until a new line, returns the data on success or an empty string on failure.","hidden":false,"returnType":1,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_line","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write","kind":1,"help":"arduino_write(index, buffer, length) : Writes data to the arduino, returns 1 if successful, 0 if failure. and negative on error.","hidden":false,"returnType":2,"argCount":3,"args":[
            2,
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_s8","kind":1,"help":"arduino_write_s8(index, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_s8","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_u8","kind":1,"help":"arduino_write_u8(index, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_u8","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_s16","kind":1,"help":"arduino_write_s16(index, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_s16","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_u16","kind":1,"help":"arduino_write_u16(index, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_u16","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_s32","kind":1,"help":"arduino_write_s32(index, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_s32","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_u32","kind":1,"help":"arduino_write_u32(index, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_u32","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_f32","kind":1,"help":"arduino_write_f32(index, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_f32","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_f64","kind":1,"help":"arduino_write_f64(index, value)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_f64","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_string","kind":1,"help":"arduino_write_string(index, string) : writes a string (NUL-terminated)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            1,
          ],"resourceVersion":"1.0","name":"arduino_write_string","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_text","kind":1,"help":"arduino_write_text(index, string) : writes a string (unterminated)","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            1,
          ],"resourceVersion":"1.0","name":"arduino_write_text","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_to_new_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_to_new_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_to_new_raw_post","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_to_new_raw_post","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_line_new_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_line_new_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_line_new_raw_post","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_line_new_raw_post","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_buffer_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_buffer_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_buffer_to_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_buffer_to_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_string_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_string_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_string_raw_post","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_string_raw_post","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_text_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_text_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_text_raw_post","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_text_raw_post","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_s8_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_s8_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_u8_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_u8_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_s16_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_s16_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_u16_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_u16_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_s32_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_s32_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_u32_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_u32_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_s64_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_s64_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_f32_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_f32_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_f64_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_f64_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_s64_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_s64_raw","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_buffer_raw","kind":11,"help":"","hidden":true,"returnType":2,"argCount":2,"args":[
            1,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_buffer_raw","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[
        {"TargetMask":6,"resourceVersion":"1.0","name":"Arduino_x64.dll","tags":[],"resourceType":"GMProxyFile",},
      ],"copyToTargets":9223372036854775807,"order":[
        {"name":"arduino_create","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_delete","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_destroy","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_connected","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_to","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_line","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_s8","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_u8","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_s16","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_u16","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_s32","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_u32","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_f32","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_f64","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_string","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_text","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_to_new_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_to_new_raw_post","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_line_new_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_line_new_raw_post","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_buffer_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_buffer_to_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_string_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_string_raw_post","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_text_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_text_raw_post","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_s8_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_u8_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_s16_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_u16_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_s32_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_u32_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_s64_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_f32_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_f64_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_s64_raw","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_buffer_raw","path":"extensions/Arduino/Arduino.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"Arduino.gml","origname":"extensions\\gml.gml","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"Arduino_prepare_buffer","kind":11,"help":"","hidden":true,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"Arduino_prepare_buffer","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":9223372036854775807,"order":[
        {"name":"Arduino_prepare_buffer","path":"extensions/Arduino/Arduino.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"autogen.gml","origname":"extensions\\autogen.gml","init":"","final":"","kind":2,"uncompress":false,"functions":[
        {"externalName":"arduino_read_to_new","kind":2,"help":"arduino_read_to_new(index:number, delim_u8:number)->string?","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_to_new","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_line_new","kind":2,"help":"arduino_read_line_new(index:number)->string? Reads until an `\\n`","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_line_new","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_buffer","kind":2,"help":"arduino_read_buffer(index:number, buf:buffer, pos:int, len:int)->int Reads bytes to a buffer, returns number of bytes read (-1, -2 special)","hidden":false,"returnType":2,"argCount":4,"args":[
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_buffer","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_buffer_to","kind":2,"help":"arduino_read_buffer_to(index:number, buf:buffer, pos:int, len:int, delim_u8:int)->int","hidden":false,"returnType":2,"argCount":5,"args":[
            2,
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_buffer_to","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_string","kind":2,"help":"arduino_read_string(index:number)->string? Reads a NUL-terminated string","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_string","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_text","kind":2,"help":"arduino_read_text(index:number, length:number)->string?","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_text","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_s8","kind":2,"help":"arduino_read_s8(index:number)->int? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_s8","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_u8","kind":2,"help":"arduino_read_u8(index:number)->int? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_u8","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_s16","kind":2,"help":"arduino_read_s16(index:number)->int? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_s16","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_u16","kind":2,"help":"arduino_read_u16(index:number)->int? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_u16","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_s32","kind":2,"help":"arduino_read_s32(index:number)->int? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_s32","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_u32","kind":2,"help":"arduino_read_u32(index:number)->int? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_u32","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_s64","kind":2,"help":"arduino_read_s64(index:number)->int? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_s64","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_f32","kind":2,"help":"arduino_read_f32(index:number)->number? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_f32","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_read_f64","kind":2,"help":"arduino_read_f64(index:number)->number? ","hidden":false,"returnType":2,"argCount":1,"args":[
            2,
          ],"resourceVersion":"1.0","name":"arduino_read_f64","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_s64","kind":2,"help":"arduino_write_s64(index:number, value:int)->int","hidden":false,"returnType":2,"argCount":2,"args":[
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_s64","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"arduino_write_buffer","kind":2,"help":"arduino_write_buffer(index:int, buf:buffer, pos:int, len:int)->int","hidden":false,"returnType":2,"argCount":4,"args":[
            2,
            2,
            2,
            2,
          ],"resourceVersion":"1.0","name":"arduino_write_buffer","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[],"copyToTargets":-1,"order":[
        {"name":"arduino_read_to_new","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_line_new","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_buffer","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_buffer_to","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_string","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_text","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_s8","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_u8","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_s16","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_u16","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_s32","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_u32","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_s64","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_f32","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_read_f64","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_s64","path":"extensions/Arduino/Arduino.yy",},
        {"name":"arduino_write_buffer","path":"extensions/Arduino/Arduino.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": "",
  "tvosdelegatename": "",
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "androidcodeinjection": "",
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 113497714299118,
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "Arduino",
  "tags": [],
  "resourceType": "GMExtension",
}
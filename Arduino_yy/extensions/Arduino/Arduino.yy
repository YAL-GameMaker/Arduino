{
    "id": "897059ab-6c2a-4b63-a648-db09480cff45",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "Arduino",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bac80d6c-a2e2-445c-9d9d-6141adb131a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "Arduino.dll",
            "final": "",
            "functions": [
                {
                    "id": "5a4a5711-c4ca-1f58-8ea4-e95d69caaa77",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_create",
                    "help": "arduino_create(com, baud) : Creates a new serial connection and returns the index in the vector or -1 if the connection failed.",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_create",
                    "returnType": 2
                },
                {
                    "id": "56adcebd-7e03-4308-d498-f307472f6ca4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_connected",
                    "help": "arduino_connected(index) : Checks if the arduino is connected, returns 1 for true, 0 for false, and -1 if the arduino does not exist.",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_connected",
                    "returnType": 2
                },
                {
                    "id": "c2e161b0-3137-1964-115f-f1dfce23d9af",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_read",
                    "help": "arduino_read(index, length) : Reads data from the arduino, returns the data on success or an empty string on failure.",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_read",
                    "returnType": 1
                },
                {
                    "id": "b9b220f9-d9f5-e36d-856b-86cdecf15509",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "arduino_read_to",
                    "help": "arduino_read_to(index, delim_str) : Reads data until a delimiter, returns the data on success or an empty string on failure.",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_read_to",
                    "returnType": 1
                },
                {
                    "id": "67f912bb-cefe-d872-76e3-dfed58ea1d3d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_line",
                    "help": "arduino_read_line(index) : Reads data until a new line, returns the data on success or an empty string on failure.",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_read_line",
                    "returnType": 1
                },
                {
                    "id": "4ec551b3-0ed1-9029-9f92-84f209aa2e66",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "arduino_write",
                    "help": "arduino_write(index, buffer, length) : Writes data to the arduino, returns 1 if successful, 0 if failure. and negative on error.",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write",
                    "returnType": 2
                },
                {
                    "id": "69796422-808e-5b6b-ac86-bc08375322f4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_s8",
                    "help": "arduino_write_s8(index, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_s8",
                    "returnType": 2
                },
                {
                    "id": "16adceca-168b-bcf9-ceba-ced152b81b5b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_u8",
                    "help": "arduino_write_u8(index, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_u8",
                    "returnType": 2
                },
                {
                    "id": "e0788f5e-d415-2a5c-eaec-c29b9593aede",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_s16",
                    "help": "arduino_write_s16(index, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_s16",
                    "returnType": 2
                },
                {
                    "id": "a82b84b6-55f3-494f-7ae8-2c6f0268f902",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_u16",
                    "help": "arduino_write_u16(index, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_u16",
                    "returnType": 2
                },
                {
                    "id": "41991d33-5989-d692-7dde-1d7f07d7c099",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_s32",
                    "help": "arduino_write_s32(index, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_s32",
                    "returnType": 2
                },
                {
                    "id": "d75c4ef7-4157-e7e7-0ca9-365b8f755743",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_u32",
                    "help": "arduino_write_u32(index, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_u32",
                    "returnType": 2
                },
                {
                    "id": "0f1f0244-7f71-a40d-062c-8f3b0b06bb62",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_f32",
                    "help": "arduino_write_f32(index, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_f32",
                    "returnType": 2
                },
                {
                    "id": "ea61029f-84a9-0749-c1fe-4ded047f6c97",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_f64",
                    "help": "arduino_write_f64(index, value)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_f64",
                    "returnType": 2
                },
                {
                    "id": "4ad2bc6d-e842-91e8-3628-8644ad1ee8bb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "arduino_write_string",
                    "help": "arduino_write_string(index, string) : writes a string (NUL-terminated)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_string",
                    "returnType": 2
                },
                {
                    "id": "f76dbc31-baa5-58e7-9474-6a0191c20e0d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "arduino_write_text",
                    "help": "arduino_write_text(index, string) : writes a string (unterminated)",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_write_text",
                    "returnType": 2
                },
                {
                    "id": "e25db46b-d3ca-cbac-d550-49c039307189",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_delete",
                    "help": "arduino_delete(index) : Deletes an arduino keeping all indices intact, returns 1 on success and 0 on failure.",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_delete",
                    "returnType": 2
                },
                {
                    "id": "c3fbe731-d815-2b50-3959-8d63cb78a99f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "arduino_destroy",
                    "help": "arduino_destroy() : Destroys all arduinos and frees memory.",
                    "hidden": false,
                    "kind": 1,
                    "name": "arduino_destroy",
                    "returnType": 2
                },
                {
                    "id": "f0e0fdbb-5d53-86f2-604a-3480b71733ed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_to_new_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_to_new_raw",
                    "returnType": 2
                },
                {
                    "id": "c9523171-f0ed-9ed3-6c76-5fc88d290aa4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_to_new_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_to_new_raw_post",
                    "returnType": 2
                },
                {
                    "id": "69796422-c4ca-1f6b-e8c2-bc0838e8dd04",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_line_new_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_line_new_raw",
                    "returnType": 2
                },
                {
                    "id": "59523171-e2cf-bcf2-7a67-5cfcc0a2b168",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_line_new_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_line_new_raw_post",
                    "returnType": 2
                },
                {
                    "id": "69796422-b3bd-686b-ac86-8f3b03245584",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_buffer_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_buffer_raw",
                    "returnType": 2
                },
                {
                    "id": "c3d3ce88-b3bd-68c1-ac86-2591a7ca11ce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_buffer_to_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_buffer_to_raw",
                    "returnType": 2
                },
                {
                    "id": "a5b5a8ee-b3bd-68a7-ac86-43f7c58e33e8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_string_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_string_raw",
                    "returnType": 2
                },
                {
                    "id": "284320db-c4a9-612b-e145-f210b17b2868",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_string_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_string_raw_post",
                    "returnType": 2
                },
                {
                    "id": "c3d3ce88-919f-4ac1-dbf1-70c4fd42ee3e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_text_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_text_raw",
                    "returnType": 2
                },
                {
                    "id": "02e98a35-379a-1650-51ab-01287555c668",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_text_raw_post",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_text_raw_post",
                    "returnType": 2
                },
                {
                    "id": "be1aff60-8cff-524c-f7b5-7451e494ff12",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_s8_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_s8_raw",
                    "returnType": 2
                },
                {
                    "id": "e6572d1d-fa85-a393-0fba-5f4dc298ae6d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_u8_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_u8_raw",
                    "returnType": 2
                },
                {
                    "id": "f44cb772-81c8-a5b9-50ce-a7c6d785d516",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_s16_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_s16_raw",
                    "returnType": 2
                },
                {
                    "id": "38be3b39-8655-a587-d12a-81586b0b0dc1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_u16_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_u16_raw",
                    "returnType": 2
                },
                {
                    "id": "200b8ceb-64b0-8967-ba11-9bbb506175fd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_s32_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_s32_raw",
                    "returnType": 2
                },
                {
                    "id": "f7e79b80-9b37-24e6-fdeb-da89417a8331",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_u32_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_u32_raw",
                    "returnType": 2
                },
                {
                    "id": "d126159e-bfbb-27e0-6a4f-608b2fc4f07f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_s64_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_s64_raw",
                    "returnType": 2
                },
                {
                    "id": "87978acc-a2ac-7985-f9d3-2591ad35ff2a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_f32_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_f32_raw",
                    "returnType": 2
                },
                {
                    "id": "3d1675bd-d79a-6129-cd98-5a96e0681b4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_read_f64_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_read_f64_raw",
                    "returnType": 2
                },
                {
                    "id": "f5154268-4d53-316b-889c-3e105fa9f2dc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_write_s64_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_write_s64_raw",
                    "returnType": 2
                },
                {
                    "id": "393b0a9c-55a2-8c6f-7908-1e39e90351a0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduino_write_buffer_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "arduino_write_buffer_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\Arduino.dll",
            "uncompress": false
        },
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "Arduino.gml",
            "final": "",
            "functions": [
                {
                    "id": "69796422-f7f9-2c6b-e8c2-8f3b03605584",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "Arduino_prepare_buffer",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "Arduino_prepare_buffer",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "962d9a80-fb98-4072-93ea-c79e5ae6f0f4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "autogen.gml",
            "final": "",
            "functions": [
                {
                    "id": "2c0fbc6d-efe7-5d23-5ea0-0e1e9d13e747",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_read_to_new",
                    "help": "arduino_read_to_new(index:number, delim_u8:number)->string?",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_to_new",
                    "returnType": 2
                },
                {
                    "id": "a4a516c7-423c-f78e-8c88-869061d6b47d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_line_new",
                    "help": "arduino_read_line_new(index:number)->string? Reads until an `\\n`",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_line_new",
                    "returnType": 2
                },
                {
                    "id": "2b701324-fd30-3474-14ef-9ed6189f6cd3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "arduino_read_buffer",
                    "help": "arduino_read_buffer(index:number, buf:buffer, pos:int, len:int)->int Reads bytes to a buffer, returns number of bytes read (-1, -2 special)",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_buffer",
                    "returnType": 2
                },
                {
                    "id": "2f3457ca-b0ed-430a-f410-c214942d4e0e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 5,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "arduino_read_buffer_to",
                    "help": "arduino_read_buffer_to(index:number, buf:buffer, pos:int, len:int, delim_u8:int)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_buffer_to",
                    "returnType": 2
                },
                {
                    "id": "e0d2da0b-8c6c-7f04-9ea0-0ea68b7539ae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_string",
                    "help": "arduino_read_string(index:number)->string? Reads a NUL-terminated string",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_string",
                    "returnType": 2
                },
                {
                    "id": "971e5283-0f1f-5d2d-4fba-a44c3c0df121",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_read_text",
                    "help": "arduino_read_text(index:number, length:number)->string?",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_text",
                    "returnType": 2
                },
                {
                    "id": "8d6ba1b9-a633-3ef4-954b-28b4cb80f728",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_s8",
                    "help": "arduino_read_s8(index:number)->int? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_s8",
                    "returnType": 2
                },
                {
                    "id": "09e7fe0a-4783-5cf1-fbb0-07ad51923d79",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_u8",
                    "help": "arduino_read_u8(index:number)->int? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_u8",
                    "returnType": 2
                },
                {
                    "id": "a0771777-6102-3e61-3c4b-c485e46e3ab0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_s16",
                    "help": "arduino_read_s16(index:number)->int? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_s16",
                    "returnType": 2
                },
                {
                    "id": "b2e61315-768e-7f32-afb4-f03e3078abb8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_u16",
                    "help": "arduino_read_u16(index:number)->int? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_u16",
                    "returnType": 2
                },
                {
                    "id": "384e5c56-5be2-b88b-cacf-cdab7106ef63",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_s32",
                    "help": "arduino_read_s32(index:number)->int? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_s32",
                    "returnType": 2
                },
                {
                    "id": "5117c1e2-0ea7-c653-3e93-078aa79db709",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_u32",
                    "help": "arduino_read_u32(index:number)->int? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_u32",
                    "returnType": 2
                },
                {
                    "id": "6e9a6e01-669b-1892-adbf-d7c7d6ba303d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_s64",
                    "help": "arduino_read_s64(index:number)->int? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_s64",
                    "returnType": 2
                },
                {
                    "id": "b5c3f829-a09a-6e1b-5fbb-b527ef36303f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_f32",
                    "help": "arduino_read_f32(index:number)->number? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_f32",
                    "returnType": 2
                },
                {
                    "id": "b5e054b5-a412-9484-853a-4d7cf1976eba",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduino_read_f64",
                    "help": "arduino_read_f64(index:number)->number? ",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_read_f64",
                    "returnType": 2
                },
                {
                    "id": "0b9d8f99-8a53-81e9-bc80-94ed3d0a4315",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduino_write_s64",
                    "help": "arduino_write_s64(index:number, value:int)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_write_s64",
                    "returnType": 2
                },
                {
                    "id": "8dc72a4e-3f27-459c-53f1-c274df3671d7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "arduino_write_buffer",
                    "help": "arduino_write_buffer(index:int, buf:buffer, pos:int, len:int)->int",
                    "hidden": false,
                    "kind": 2,
                    "name": "arduino_write_buffer",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\autogen.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}
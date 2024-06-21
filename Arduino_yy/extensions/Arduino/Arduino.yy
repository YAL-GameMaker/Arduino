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
                    "id": "e1f1ecaa-d5db-0ee3-062c-cb7f478edd0c",
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
                    "id": "37e5fc10-edce-5d85-b382-7c39f78a76f8",
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
                    "id": "c5110ed9-b56b-087d-88f4-fc5d2bf37dc1",
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
                    "id": "4d1675ac-5865-8fc0-5067-3b83a37e7d0e",
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
                    "id": "4a694392-1f74-1968-7ae8-860553faede3",
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
                    "id": "7d4a24b1-f613-b684-3ee7-e7d00a3d1241",
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
                    "id": "4f72a211-5323-ad23-6b87-ac5a8daa1dc0",
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
                    "id": "b1b2ca91-2090-b282-8170-abe5492bd450",
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
                    "id": "81d3db10-ba4a-f865-e6dc-6eaa9bbad8aa",
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
                    "id": "5d9e87d1-676f-6f0c-c8f0-a6db9bd67b09",
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
                    "id": "4111b705-4ab8-879c-d1d9-d06b20f369d6",
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
                    "id": "300066ed-14a6-e1f7-2cb2-0ea105097d37",
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
                    "id": "4aa6d1d8-93c5-0b4d-17f1-b47ed83975d3",
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
                    "id": "e107c22d-41d0-89fa-d8bd-3c176ebfbfcd",
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
                    "id": "11ba777a-cd4e-0672-1f6c-e3ebd853a2af",
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
                    "id": "c474d768-f088-d9b2-1318-2e227e68635b",
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
                    "id": "0cf48e27-ce5d-0ace-520e-cad73bb10bf8",
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
                    "id": "3a49b02d-d8a7-d663-f59c-b6b8fb525e08",
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
                    "id": "a5a556ce-e5e0-6d9c-3982-9efae84eaeb5",
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
                    "id": "d9de63b7-7dab-b148-b3ae-f2d0e0027be8",
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
                    "id": "f34950ad-5cc9-698a-fe73-137bfc91511f",
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
                    "id": "2989742d-189e-233e-3aa0-9e736de6cc14",
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
                    "id": "27453ac7-cb67-f189-6875-9394b02edf03",
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
                    "id": "a7ab7629-669f-91e4-73b3-4b445b6c000a",
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
                    "id": "cbadc330-d7fd-5331-5a4f-c28fa5e31014",
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
                    "id": "dff33931-0589-34ac-c09c-503133b9f3e2",
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
                    "id": "4304d067-546b-f4d2-dc3d-135991594dc2",
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
                    "id": "ba042029-3411-722d-7db4-bdfa3fd81bb5",
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
                    "id": "4c48664f-b8a0-c1b4-c514-9d089575f4b7",
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
                    "id": "4b1d9448-ad5e-c834-c462-d16a6c029d49",
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
                    "id": "21d5bf25-f145-a36e-dfb2-4af579a9c9e6",
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
                    "id": "51301a29-b298-c755-8707-d9da1afa745b",
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
                    "id": "03b9ae6b-2fdc-908b-b3e1-c99e67d9f338",
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
                    "id": "85d469aa-bf46-795f-5527-fd0ffde477b5",
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
                    "id": "e8f76635-6b60-1d04-e76f-aa9dc971a4f6",
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
                    "id": "f2cb0ce1-8569-660a-159a-6aba61ae1416",
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
                    "id": "5ea02761-3607-cc2e-4271-526ad166982f",
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
                    "id": "d7426432-d572-810e-5b9b-8e497da102f6",
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
                    "id": "d0768262-41b0-12f7-64bf-641c9b401c40",
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
                    "id": "9a40f012-20c0-e370-a15c-3708ed492f27",
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
                    "id": "7a9153a2-8398-ceb9-7101-5b0868c22bf8",
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
                    "id": "29acacbb-1918-2e37-509a-89e0621c4688",
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
                    "id": "6f8859ec-9066-bd53-f93d-8c81637d7ce4",
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
                    "id": "53469b38-a91e-ee68-b04f-9748bbebe3cc",
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
                    "id": "bfeb2f1a-02e7-1699-5ff0-1b9bdcac8255",
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
                    "id": "b909da85-0fb0-e3a2-04e3-18ff067904ec",
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
                    "id": "553a2511-6933-cbce-6ceb-56fe03292f42",
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
                    "id": "6e6d1b76-8275-86f6-ee8a-a4e6b415bc2a",
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
                    "id": "1d45eeb9-a9d7-86f7-dff8-b6d8f029ce1a",
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
                    "id": "6eb9a7d3-793b-b1d3-d57d-59c71433476a",
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
                    "id": "0a3a52c4-f015-1c16-806e-cad05424dfbf",
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
                    "id": "db76cf3b-79eb-5cfb-db98-9f6428c7b81b",
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
                    "id": "c61bc25e-c6ee-6f92-8795-a7ce803bcc62",
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
                    "id": "5db35d8b-6816-fd51-1c57-f0b8ea19b9d9",
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
                    "id": "9bce4d0d-d8d1-f806-0c0e-8a364bc25f20",
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
                    "id": "72704043-de8b-24de-c546-b7009f46d291",
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
                    "id": "a49c3748-0602-cbe4-d1d8-ceaa18d43cea",
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
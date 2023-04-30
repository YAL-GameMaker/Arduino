#define arduino_read_to_new
/// arduino_read_to_new(index:number, delim_u8:number)->string?
var _buf = Arduino_prepare_buffer(16);
buffer_write(_buf, buffer_f64, argument0);
buffer_write(_buf, buffer_f64, argument1);
var __size__ = arduino_read_to_new_raw(buffer_get_address(_buf), 16);
if (__size__ == 0) return undefined;
if (buffer_get_size(_buf) < __size__) buffer_resize(_buf, __size__);
// GMS >= 2.3:
buffer_set_used_size(_buf, __size__);
/*/
buffer_poke(_buf, __size__ - 1, buffer_u8, 0);
//*/
arduino_read_to_new_raw_post(buffer_get_address(_buf), __size__);
buffer_seek(_buf, buffer_seek_start, 0);

var _val_0;
if (buffer_read(_buf, buffer_bool)) {
	_val_0 = buffer_read(_buf, buffer_string);
} else _val_0 = undefined;
return _val_0;

#define arduino_read_line_new
/// arduino_read_line_new(index:number)->string? Reads until an `\n`
var _buf = Arduino_prepare_buffer(9);
buffer_write(_buf, buffer_f64, argument0);
var __size__ = arduino_read_line_new_raw(buffer_get_address(_buf), 9);
if (__size__ == 0) return undefined;
if (buffer_get_size(_buf) < __size__) buffer_resize(_buf, __size__);
// GMS >= 2.3:
buffer_set_used_size(_buf, __size__);
/*/
buffer_poke(_buf, __size__ - 1, buffer_u8, 0);
//*/
arduino_read_line_new_raw_post(buffer_get_address(_buf), __size__);
buffer_seek(_buf, buffer_seek_start, 0);

var _val_0;
if (buffer_read(_buf, buffer_bool)) {
	_val_0 = buffer_read(_buf, buffer_string);
} else _val_0 = undefined;
return _val_0;

#define arduino_read_buffer
/// arduino_read_buffer(index:number, buf:buffer, pos:int, len:int)->int Reads bytes to a buffer, returns number of bytes read (-1, -2 special)
var _buf = Arduino_prepare_buffer(32);
buffer_write(_buf, buffer_f64, argument0);
var _val_0 = argument1;
if (buffer_exists(_val_0)) {
	buffer_write(_buf, buffer_u64, int64(buffer_get_address(_val_0)));
	buffer_write(_buf, buffer_s32, buffer_get_size(_val_0));
	buffer_write(_buf, buffer_s32, buffer_tell(_val_0));
} else {
	buffer_write(_buf, buffer_u64, 0);
	buffer_write(_buf, buffer_s32, 0);
	buffer_write(_buf, buffer_s32, 0);
}
buffer_write(_buf, buffer_s32, argument2);
buffer_write(_buf, buffer_s32, argument3);
return arduino_read_buffer_raw(buffer_get_address(_buf), 32);

#define arduino_read_buffer_to
/// arduino_read_buffer_to(index:number, buf:buffer, pos:int, len:int, delim_u8:int)->int
var _buf = Arduino_prepare_buffer(36);
buffer_write(_buf, buffer_f64, argument0);
var _val_0 = argument1;
if (buffer_exists(_val_0)) {
	buffer_write(_buf, buffer_u64, int64(buffer_get_address(_val_0)));
	buffer_write(_buf, buffer_s32, buffer_get_size(_val_0));
	buffer_write(_buf, buffer_s32, buffer_tell(_val_0));
} else {
	buffer_write(_buf, buffer_u64, 0);
	buffer_write(_buf, buffer_s32, 0);
	buffer_write(_buf, buffer_s32, 0);
}
buffer_write(_buf, buffer_s32, argument2);
buffer_write(_buf, buffer_s32, argument3);
buffer_write(_buf, buffer_s32, argument4);
return arduino_read_buffer_to_raw(buffer_get_address(_buf), 36);

#define arduino_read_string
/// arduino_read_string(index:number)->string? Reads a NUL-terminated string
var _buf = Arduino_prepare_buffer(9);
buffer_write(_buf, buffer_f64, argument0);
var __size__ = arduino_read_string_raw(buffer_get_address(_buf), 9);
if (__size__ == 0) return undefined;
if (buffer_get_size(_buf) < __size__) buffer_resize(_buf, __size__);
// GMS >= 2.3:
buffer_set_used_size(_buf, __size__);
/*/
buffer_poke(_buf, __size__ - 1, buffer_u8, 0);
//*/
arduino_read_string_raw_post(buffer_get_address(_buf), __size__);
buffer_seek(_buf, buffer_seek_start, 0);

var _val_0;
if (buffer_read(_buf, buffer_bool)) {
	_val_0 = buffer_read(_buf, buffer_string);
} else _val_0 = undefined;
return _val_0;

#define arduino_read_text
/// arduino_read_text(index:number, length:number)->string?
var _buf = Arduino_prepare_buffer(16);
buffer_write(_buf, buffer_f64, argument0);
buffer_write(_buf, buffer_f64, argument1);
var __size__ = arduino_read_text_raw(buffer_get_address(_buf), 16);
if (__size__ == 0) return undefined;
if (buffer_get_size(_buf) < __size__) buffer_resize(_buf, __size__);
// GMS >= 2.3:
buffer_set_used_size(_buf, __size__);
/*/
buffer_poke(_buf, __size__ - 1, buffer_u8, 0);
//*/
arduino_read_text_raw_post(buffer_get_address(_buf), __size__);
buffer_seek(_buf, buffer_seek_start, 0);

var _val_0;
if (buffer_read(_buf, buffer_bool)) {
	_val_0 = buffer_read(_buf, buffer_string);
} else _val_0 = undefined;
return _val_0;

#define arduino_read_s8
/// arduino_read_s8(index:number)->int? 
var _buf = Arduino_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_s8_raw(buffer_get_address(_buf), 8)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_s8);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_read_u8
/// arduino_read_u8(index:number)->int? 
var _buf = Arduino_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_u8_raw(buffer_get_address(_buf), 8)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_u8);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_read_s16
/// arduino_read_s16(index:number)->int? 
var _buf = Arduino_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_s16_raw(buffer_get_address(_buf), 8)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_s16);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_read_u16
/// arduino_read_u16(index:number)->int? 
var _buf = Arduino_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_u16_raw(buffer_get_address(_buf), 8)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_u16);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_read_s32
/// arduino_read_s32(index:number)->int? 
var _buf = Arduino_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_s32_raw(buffer_get_address(_buf), 8)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_s32);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_read_u32
/// arduino_read_u32(index:number)->int? 
var _buf = Arduino_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_u32_raw(buffer_get_address(_buf), 8)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_u32);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_read_s64
/// arduino_read_s64(index:number)->int? 
var _buf = Arduino_prepare_buffer(9);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_s64_raw(buffer_get_address(_buf), 9)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_u64);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_read_f32
/// arduino_read_f32(index:number)->number? 
var _buf = Arduino_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_f32_raw(buffer_get_address(_buf), 8)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_f32);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_read_f64
/// arduino_read_f64(index:number)->number? 
var _buf = Arduino_prepare_buffer(8);
buffer_write(_buf, buffer_f64, argument0);
if (arduino_read_f64_raw(buffer_get_address(_buf), 8)) {
	buffer_seek(_buf, buffer_seek_start, 0);
	var _val_0;
	if (buffer_read(_buf, buffer_bool)) {
		_val_0 = buffer_read(_buf, buffer_f32);
	} else _val_0 = undefined;
	return _val_0;
} else return undefined;

#define arduino_write_s64
/// arduino_write_s64(index:number, value:int)->int
var _buf = Arduino_prepare_buffer(16);
buffer_write(_buf, buffer_f64, argument0);
buffer_write(_buf, buffer_u64, argument1);
return arduino_write_s64_raw(buffer_get_address(_buf), 16);

#define arduino_write_buffer
/// arduino_write_buffer(index:int, buf:buffer, pos:int, len:int)->int
var _buf = Arduino_prepare_buffer(28);
buffer_write(_buf, buffer_s32, argument0);
var _val_0 = argument1;
if (buffer_exists(_val_0)) {
	buffer_write(_buf, buffer_u64, int64(buffer_get_address(_val_0)));
	buffer_write(_buf, buffer_s32, buffer_get_size(_val_0));
	buffer_write(_buf, buffer_s32, buffer_tell(_val_0));
} else {
	buffer_write(_buf, buffer_u64, 0);
	buffer_write(_buf, buffer_s32, 0);
	buffer_write(_buf, buffer_s32, 0);
}
buffer_write(_buf, buffer_s32, argument2);
buffer_write(_buf, buffer_s32, argument3);
return arduino_write_buffer_raw(buffer_get_address(_buf), 28);


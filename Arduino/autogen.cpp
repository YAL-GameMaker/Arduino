#include "gml_ext.h"
extern tiny_optional<const char*> arduino_read_to_new(double index, double delim_u8);
static tiny_optional<const char*> arduino_read_to_new_raw_vec;
dllx double arduino_read_to_new_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	double _arg_delim_u8;
	_arg_delim_u8 = _in.read<double>();
	arduino_read_to_new_raw_vec = arduino_read_to_new(_arg_index, _arg_delim_u8);
	return (double)(arduino_read_to_new_raw_vec.has_value() ? 1 + (1 + strlen(arduino_read_to_new_raw_vec.value())) : 1);
}
dllx double arduino_read_to_new_raw_post(void* _out_ptr, double _out_ptr_size) {
	gml_ostream _out(_out_ptr);
	{
		auto& _opt = arduino_read_to_new_raw_vec;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write_string(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<const char*> arduino_read_line_new(double index);
static tiny_optional<const char*> arduino_read_line_new_raw_vec;
dllx double arduino_read_line_new_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	arduino_read_line_new_raw_vec = arduino_read_line_new(_arg_index);
	return (double)(arduino_read_line_new_raw_vec.has_value() ? 1 + (1 + strlen(arduino_read_line_new_raw_vec.value())) : 1);
}
dllx double arduino_read_line_new_raw_post(void* _out_ptr, double _out_ptr_size) {
	gml_ostream _out(_out_ptr);
	{
		auto& _opt = arduino_read_line_new_raw_vec;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write_string(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern int arduino_read_buffer(double index, gml_buffer buf, int pos, int len);
dllx double arduino_read_buffer_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	gml_buffer _arg_buf;
	_arg_buf = _in.read_gml_buffer();
	int _arg_pos;
	_arg_pos = _in.read<int>();
	int _arg_len;
	_arg_len = _in.read<int>();
	return arduino_read_buffer(_arg_index, _arg_buf, _arg_pos, _arg_len);
}

extern int arduino_read_buffer_to(double index, gml_buffer buf, int pos, int len, int delim_u8);
dllx double arduino_read_buffer_to_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	gml_buffer _arg_buf;
	_arg_buf = _in.read_gml_buffer();
	int _arg_pos;
	_arg_pos = _in.read<int>();
	int _arg_len;
	_arg_len = _in.read<int>();
	int _arg_delim_u8;
	_arg_delim_u8 = _in.read<int>();
	return arduino_read_buffer_to(_arg_index, _arg_buf, _arg_pos, _arg_len, _arg_delim_u8);
}

extern tiny_optional<const char*> arduino_read_string(double index);
static tiny_optional<const char*> arduino_read_string_raw_vec;
dllx double arduino_read_string_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	arduino_read_string_raw_vec = arduino_read_string(_arg_index);
	return (double)(arduino_read_string_raw_vec.has_value() ? 1 + (1 + strlen(arduino_read_string_raw_vec.value())) : 1);
}
dllx double arduino_read_string_raw_post(void* _out_ptr, double _out_ptr_size) {
	gml_ostream _out(_out_ptr);
	{
		auto& _opt = arduino_read_string_raw_vec;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write_string(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<const char*> arduino_read_text(double index, double length);
static tiny_optional<const char*> arduino_read_text_raw_vec;
dllx double arduino_read_text_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	double _arg_length;
	_arg_length = _in.read<double>();
	arduino_read_text_raw_vec = arduino_read_text(_arg_index, _arg_length);
	return (double)(arduino_read_text_raw_vec.has_value() ? 1 + (1 + strlen(arduino_read_text_raw_vec.value())) : 1);
}
dllx double arduino_read_text_raw_post(void* _out_ptr, double _out_ptr_size) {
	gml_ostream _out(_out_ptr);
	{
		auto& _opt = arduino_read_text_raw_vec;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write_string(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<int8_t> arduino_read_s8(double index);
dllx double arduino_read_s8_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<int8_t> _ret = arduino_read_s8(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<int8_t>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<uint8_t> arduino_read_u8(double index);
dllx double arduino_read_u8_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<uint8_t> _ret = arduino_read_u8(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<uint8_t>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<int16_t> arduino_read_s16(double index);
dllx double arduino_read_s16_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<int16_t> _ret = arduino_read_s16(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<int16_t>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<uint16_t> arduino_read_u16(double index);
dllx double arduino_read_u16_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<uint16_t> _ret = arduino_read_u16(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<uint16_t>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<int32_t> arduino_read_s32(double index);
dllx double arduino_read_s32_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<int32_t> _ret = arduino_read_s32(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<int32_t>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<uint32_t> arduino_read_u32(double index);
dllx double arduino_read_u32_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<uint32_t> _ret = arduino_read_u32(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<uint32_t>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<int64_t> arduino_read_s64(double index);
dllx double arduino_read_s64_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<int64_t> _ret = arduino_read_s64(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<int64_t>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<float> arduino_read_f32(double index);
dllx double arduino_read_f32_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<float> _ret = arduino_read_f32(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<float>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern tiny_optional<float> arduino_read_f64(double index);
dllx double arduino_read_f64_raw(void* _inout_ptr, double _inout_ptr_size) {
	gml_istream _in(_inout_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	tiny_optional<float> _ret = arduino_read_f64(_arg_index);
	gml_ostream _out(_inout_ptr);
	{
		auto& _opt = _ret;
		if (_opt.has_value()) {
			_out.write<bool>(true);
			_out.write<float>(_opt.value());
			
		} else _out.write<bool>(false);
		
	}
	return 1;
}

extern int arduino_write_s64(double index, int64_t value);
dllx double arduino_write_s64_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	double _arg_index;
	_arg_index = _in.read<double>();
	int64_t _arg_value;
	_arg_value = _in.read<int64_t>();
	return arduino_write_s64(_arg_index, _arg_value);
}

extern int arduino_write_buffer(int index, gml_buffer buf, int pos, int len);
dllx double arduino_write_buffer_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	int _arg_index;
	_arg_index = _in.read<int>();
	gml_buffer _arg_buf;
	_arg_buf = _in.read_gml_buffer();
	int _arg_pos;
	_arg_pos = _in.read<int>();
	int _arg_len;
	_arg_len = _in.read<int>();
	return arduino_write_buffer(_arg_index, _arg_buf, _arg_pos, _arg_len);
}


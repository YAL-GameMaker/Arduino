#define Arduino_prepare_buffer
/// (size:int)->buffer~
var _size = argument0;
gml_pragma("global", "global.__Arduino_buffer = undefined");
var _buf = global.__Arduino_buffer;
if (_buf == undefined) {
    _buf = buffer_create(_size, buffer_grow, 1);
    global.__Arduino_buffer = _buf;
} else if (buffer_get_size(_buf) < _size) {
    buffer_resize(_buf, _size);
}
buffer_seek(_buf, buffer_seek_start, 0);
return _buf;
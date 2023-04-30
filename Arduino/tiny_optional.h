#pragma once
#define tiny_optional_h

template<typename T> class tiny_optional {
	T _value;
	bool _has_value;
public:
	tiny_optional() : _has_value(false) {
		_value = {};
	};
	tiny_optional(T value) : _value(value), _has_value(true) {}

	void reset() {
		_value = {};
		_has_value = false;
	}

	T value() { return _value; }
	bool has_value() { return _has_value; }

	constexpr void operator = (T value) {
		_value = value;
		_has_value = true;
	}
	constexpr const T* operator->() { return &_value; }
	constexpr const T* operator*() { return &_value; }
};

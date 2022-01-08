#include "gml_ext.h"
extern bool gamepad_force_focus(GAME_HWND hwnd, bool enable);
dllx double gamepad_force_focus_raw(void* _in_ptr, double _in_ptr_size) {
	gml_istream _in(_in_ptr);
	GAME_HWND _arg_hwnd;
	_arg_hwnd = (GAME_HWND)_in.read<uint64_t>();
	bool _arg_enable;
	if (_in.read<bool>()) {
		_arg_enable = _in.read<bool>();
	} else _arg_enable = true;
	return gamepad_force_focus(_arg_hwnd, _arg_enable);
}


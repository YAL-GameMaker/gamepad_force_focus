#define gamepad_force_focus
/// gamepad_force_focus(enable:bool = true)->bool
var _buf = gamepad_force_focus_prepare_buffer(10);
buffer_write(_buf, buffer_u64, int64(window_handle()));
if (argument_count >= 1) {
	buffer_write(_buf, buffer_bool, true);
	buffer_write(_buf, buffer_bool, argument[0]);
} else buffer_write(_buf, buffer_bool, false);
return gamepad_force_focus_raw(buffer_get_address(_buf), 10);


draw_set_font(fnt_test);
draw_set_color(c_white);
var s = "Window " + (window_has_focus() ? "has" : "does not have") + " focus.";
s += "\nExtension is " + (enabled ? "loaded" : "not loaded") + ".";
s += "\nConnected gamepads:";
for (var i = 0; i < 12; i++) {
	if (gamepad_is_connected(i)) {
		s += "\nGP" + string(i + 1) + ": buttons(";
		for (var k = 0; k < 10; k++) {
			s += string(gamepad_button_check(i, gp_face1 + k));
		}
		s += ") axes(";
		for (var k = 0; k < 4; k++) {
			if (k > 0) s += ", ";
			s += string(gamepad_axis_value(i, gp_axislh + k));
		}
		s += ")";
	}
}
draw_text(5, 5, s);

///scr_get_input
right_key  = (keyboard_check(ord("D")))
left_key   = (keyboard_check(ord("A")))
up_key     = (keyboard_check(ord("W")))
down_key   = (keyboard_check(ord("S")))
dash_key   = (keyboard_check_pressed(vk_space))
attack_key = (mouse_check_button_pressed(mb_left))

// Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);


//mouse_check_button_pressed(mb_left))

// Check for Gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    
    yaxis = gamepad_axis_value(0, gp_axislv);
}

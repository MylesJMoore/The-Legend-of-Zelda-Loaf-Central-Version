///scr_get_input_controller
 right_key = gamepad_button_check_pressed(0, gp_padr);
 left_key = gamepad_button_check_pressed(0, gp_padl);
 up_key = gamepad_button_check_pressed(0, gp_padu);
 down_key = gamepad_button_check_pressed(0, gp_padd);

// Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);



// Check for gamepad input
if(gamepad_is_connected(0))
{
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_face2);
    attack_key = gamepad_button_check_pressed(0, gp_face1);
    shoot_key = gamepad_button_check_pressed(0, gp_face3);
    pause_key = gamepad_button_check_pressed(0, gp_start);
}

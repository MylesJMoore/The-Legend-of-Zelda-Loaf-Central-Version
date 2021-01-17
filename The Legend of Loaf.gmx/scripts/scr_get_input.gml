///scr_get_input
right_key = keyboard_check(ord('D'));
left_key = keyboard_check(ord('A'));
up_key = keyboard_check(ord('W'));
down_key = keyboard_check(ord('S'));
dash_key = keyboard_check(vk_space);
attack_key = mouse_check_button_pressed(mb_left);
swap_key = keyboard_check(ord('E'));
shoot_key = mouse_check_button_pressed(mb_right);
pause_key = keyboard_check_pressed(vk_escape);



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
    right_key = gamepad_button_check_pressed(0, gp_padr);
    left_key = gamepad_button_check_pressed(0, gp_padl);
    up_key = gamepad_button_check_pressed(0, gp_padu);
    down_key = gamepad_button_check_pressed(0, gp_padd);
    swap_key = gamepad_button_check_pressed(0, gp_face4);
}


/*
// Arrow Keyboard Control for Player
//Dash Key is "C" Key
//Shoot Key is "X' Key
//Pause Key is "Z' Key
dash_key = keyboard_check_pressed(ord('C'));
shoot_key = keyboard_check_pressed(ord('X'));
pause_key = keyboard_check_pressed(ord('Z'));
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

*/




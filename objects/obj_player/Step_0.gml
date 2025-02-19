//if (keyboard_check(vk_left)) {
//	x -= 5;
//} else if (keyboard_check(vk_right)) {
//	x += 5;
//} else if (keyboard_check(vk_up)) {
//	y -= 5;	
//} else if (keyboard_check(vk_down)) {
//	y += 5;
//}

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;
x += move_x;
move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
move_y *= move_speed;
y += move_y;
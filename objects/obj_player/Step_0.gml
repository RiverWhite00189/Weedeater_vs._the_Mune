var walls = layer_tilemap_get_id("tiles_col");
var col_detect = move_speed;

//check for movement
if (keyboard_check(vk_left)) {
	if (!place_meeting(x - col_detect, y, walls)) {
		sprite_index = spr_player_left_walk;
		x -= move_speed;	
	}
} else if (keyboard_check(vk_right)) {
	if (!place_meeting(x + col_detect, y, walls)) {
		sprite_index = spr_player_right_walk;
		x += move_speed;
	}
} else if (keyboard_check(vk_up)) {
	if (!place_meeting(x, y - col_detect, walls)) {
		sprite_index = spr_player_up_walk;
		y -= move_speed;	
	}
} else if (keyboard_check(vk_down)) {
	if (!place_meeting(x, y + col_detect, walls)) {
		sprite_index = spr_player_down_walk;
		y += move_speed;
	}
} else {
	//go back to idle
	if (keyboard_check_released(vk_left)) {
		sprite_index = spr_player_left_idle;
	} else if (keyboard_check_released(vk_right)) {
		sprite_index = spr_player_right_idle;
	} else if (keyboard_check_released(vk_up)) {
		sprite_index = spr_player_up_idle;
	} else if (keyboard_check_released(vk_down)) {
		sprite_index = spr_player_down_idle;
	}
}

//move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
//move_x *= move_speed;
//x += move_x;
//move_y = keyboard_check(vk_down) - keyboard_check(vk_up);
//move_y *= move_speed;
//y += move_y;
//check for player if close enough and set target position to player
//no player? move random

if (instance_exists(obj_player) && distance_to_object(obj_player) < vision_range) {
	//sprite_index = spr_enemy1_attack;
	target_x = obj_player.x;
	target_y = obj_player.y;
	sprite_index = spr_attack;
} else {
	sprite_index = spr_idle;
	target_x = random_range(xstart - 100, xstart + 100);
	target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;

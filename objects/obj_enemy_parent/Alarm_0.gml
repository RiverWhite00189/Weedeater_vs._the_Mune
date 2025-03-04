//check for player if close enough and set target position to player
//no player? move random

if (instance_exists(obj_player) && distance_to_object(obj_player) < vision_range) {
	//sprite_index = spr_enemy1_attack;
	target_x = obj_player.x;
	target_y = obj_player.y;
	
	//move_and_collide((target_x - x) * move_speed , (target_y - y) * move_speed, walls, undefined, undefined, undefined, move_speed, move_speed);

	//x = target_x;
	//y = target_y;
} else {
	//if (sprite_index = spr_enemy1_attack) sprite_index = spr_enemy1_idle;
	target_x = x + irandom(64) - irandom(64);
	target_y = y - irandom(64) + irandom(64);
	
	while (place_meeting(target_x, target_y, walls)) {
		target_x = x + irandom(64) - irandom(64);
		target_y = y - irandom(64) + irandom(64);
	}
	
	x = target_x;
	y = target_y;
}

alarm[0] = 60;

//while (x < target_x && y < target_y) {
	//x += move_speed;
	//y += move_speed;
//}
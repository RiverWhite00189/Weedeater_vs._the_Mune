if (instance_exists(obj_player) && distance_to_object(obj_player) < vision_range) {
	sprite_index = spr_enemy1_attack;
} else if (sprite_index = spr_enemy1_attack) {
	sprite_index = spr_enemy1_idle;
}

if (obj_player.x != x && obj_player.y != y) {
	move_and_collide((target_x - x) * move_speed , (target_y - y) * move_speed, walls, undefined, undefined, undefined, move_speed, move_speed);
}
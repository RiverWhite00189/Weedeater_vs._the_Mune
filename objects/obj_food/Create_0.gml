var col_layer1 =  layer_tilemap_get_id("tiles_back");
var col_layer2 = layer_tilemap_get_id("tiles_col");

if (!place_meeting(x, y,  col_layer1 ) | place_meeting(x, y,  col_layer2 )) {
	instance_destroy(); }
//} else if (place_meeting(x, y,  col_layer2 )) {
//	instance_destroy();
//}

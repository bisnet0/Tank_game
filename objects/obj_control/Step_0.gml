#region PROCURAR PLAYER E ATIRAR

if (collision_circle(x, y,500, obj_player, false, false)) {
image_angle = direction;

if(_cooldown < 1){
	var _tiro= instance_create_layer(x, y, "ShotLayer", obj_shot_enemy);
	_tiro.image_angle = image_angle
	_tiro.direction = direction
	_cooldown = 30;
}
}

var _andar = direction = point_direction(x, y, obj_player.x, obj_player.y);


//if (collision_circle(x, y, 100, obj_player, false, false)) { // ANDANDO


move_towards_point(random(x),random(y), spd);




_cooldown = _cooldown - 1;



if (hp) <= 0 instance_destroy();
#endregion 





direction = point_direction(x, y, obj_player.x, obj_player.y);

image_angle = direction;

if (instance_exists(obj_player))
{
    move_towards_point(obj_player.x, obj_player.y, spd);
}

if(_cooldown < 1){
	var _tiro= instance_create_layer(x, y, "ShotLayer", obj_shot_enemy);
	_tiro.image_angle = image_angle
	_tiro.direction = direction
	_cooldown = 30;
}

_cooldown = _cooldown - 1;


if (hp) <= 0 instance_destroy();

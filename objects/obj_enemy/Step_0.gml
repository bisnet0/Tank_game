#region PROCURAR PLAYER E ATIRAR

#region MOVIMENTACAO DO INIMIGO

var movimentacao = false

intervalo_destino -= 1

if(intervalo_destino<=0 && !movimentacao){
	var random_x = irandom(room_width)
	var random_y = irandom(room_height)
	
	if (random_x!=image_angle && random_y != image_angle){
		image_angle = direction
	}
	
	x_destino = random_x
	y_destino = random_y
	movimentacao = true
	
	intervalo_destino = irandom_range(60,36000)

move_towards_point(x_destino,y_destino,spd)
}
#endregion


if (collision_circle(x, y,150, obj_player, false, false)) {
image_angle = direction;
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	if(_cooldown < 1){
		
		var _tiro= instance_create_layer(x, y, "ShotLayer", obj_shot_enemy);
		_tiro.image_angle = image_angle
		_tiro.direction = direction
		_cooldown = 30;
	}
}


#endregion 

#region TIRO
_cooldown = _cooldown - 1;
if (hp) <= 0 instance_destroy();
#endregion



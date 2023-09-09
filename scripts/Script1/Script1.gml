// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Atirar(){
if(_cooldown < 1){
	var _tiro= instance_create_layer(x, y, "ShotLayer", obj_shot_enemy);
	_tiro.image_angle = image_angle
	_tiro.direction = direction
	_cooldown = 30;

}

_cooldown = _cooldown - 1;
}

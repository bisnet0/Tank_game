#region MOVIMENTACAO

var _mov_north = keyboard_check(ord("W"))
var _mov_south = keyboard_check(ord("S"))
var _mov_west = keyboard_check(ord("A"))
var _mov_east = keyboard_check(ord("D"))


if _mov_north{
y-=5;
image_angle = 0
direction = 90;
}

if _mov_south{
y+=5;
image_angle = -180
direction = 270;
}

if _mov_west{
x-=5;
image_angle = 90
direction = 180;

}

if _mov_east{
x+=5;
image_angle = -90
direction = 0;
}

// Diagonals

if  _mov_north && _mov_west{
    image_angle = 45;
	direction = 135;
}

if  _mov_north && _mov_east{
    image_angle = -45;
	direction = 45;
}

if _mov_south &&  _mov_west{
    image_angle = 135;
	direction = 225;
}

if _mov_south && _mov_east{
    image_angle = -135;
	direction = 315;
}
#endregion

#region DIRECAO DO TIRO

var _space = keyboard_check_pressed(vk_space)

if(_space && global._cooldown < 1){
	var _tiro= instance_create_layer(x, y, "ShotLayer", obj_shot);
	_tiro.image_angle = image_angle
	_tiro.direction = direction
	global._cooldown = 3;
}

global._cooldown = global._cooldown - 1;


#endregion
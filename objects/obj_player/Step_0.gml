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

if(_space && _cooldown_player < 1){
	var _tiro= instance_create_layer(x, y, "ShotLayer", obj_shot);
	_tiro.image_angle = image_angle
	_tiro.direction = direction
	_cooldown_player = 3;
	audio_play_sound(snd_shoot,1,false)
}

_cooldown_player = _cooldown_player - 1;


#endregion

#region MOVIMENTACAO PELA CÂMERA

var player_collision_radius = 800; 

var spawn_areas = [
    { x_min: 45, x_max: 250, y_min: 51, y_max: 96 },
    { x_min: 60, x_max: 210, y_min: 644, y_max: 739 },
    { x_min: 1181, x_max: 1307, y_min: 39, y_max: 152 },
    { x_min: 1117, x_max: 1332, y_min: 635, y_max: 736 }
];

var intervalo_de_spawn = 2 * room_speed;

var player_x = x; 
var player_y = y; 

tempo_de_spawn += 1;

if (tempo_de_spawn >= intervalo_de_spawn) {
    var spawn_area = spawn_areas[irandom(3)];
    var spawn_x, spawn_y;
    
    var max_attempts = 100;
    var attempt = 0;
    
    do {
        spawn_x = irandom_range(spawn_area.x_min, spawn_area.x_max);
        spawn_y = irandom_range(spawn_area.y_min, spawn_area.y_max);
        
        attempt += 1;
        
        if (attempt >= max_attempts) {
            break;
        }
    } until (!collision_circle(spawn_x, spawn_y, player_collision_radius, obj_player, false, true));
    
    if (attempt < max_attempts) {
        instance_create_layer(spawn_x, spawn_y, "Instances", obj_controller);
        tempo_de_spawn = 0;
    }
}

#region RECORDE
if(global.pontos>global.recorde){
	global.recorde= global.pontos

}

#endregion




#endregion
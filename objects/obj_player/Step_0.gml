#region MOVIMENTACAO
if keyboard_check(ord("W")){
y-=5;
image_angle = 0

}

if keyboard_check(ord("A")){
x-=5;
image_angle = 90

}

if keyboard_check(ord("S")){
y+=5;
image_angle = -180

}

if keyboard_check(ord("D")){
x+=5;
image_angle = -90

}
#endregion

#region DIRECAO DO TIRO

if(keyboard_check_pressed(vk_space)){
	tiro=instance_create(x,y,obj_shot);
	tiro.direction = 90;
}


#endregion

if(hp = 1){
	image_blend = c_red
	alarm[0] = 30

}


	




if (hp = 0){

instance_create_layer(x,y,"Instances",obj_explosion)

instance_destroy();
	

show_message("Game Over")

game_restart();

}
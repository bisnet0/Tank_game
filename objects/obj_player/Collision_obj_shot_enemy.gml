#region EFEITO PISCAR VERMELHO
if(global.hp < 6){
	image_blend = c_red //piscar vermelho para perda de hp
	alarm[0] = 30

}
#endregion
#region EFEITO GAME OVER
if (global.hp = 0){

	instance_destroy();

	audio_play_sound(snd_volcano,3,false)
	instance_create_layer(x,y,"Explosion",obj_explosion)
	audio_play_sound(snd_game_over,1,false)
	instance_create_layer(x,y,"new_game",obj_game_over)

}
#endregion


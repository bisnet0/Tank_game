#region EFEITO HP DO PERSONAGEM

if(global.hp = 6){
	draw_sprite(spr_hp,0,185,80)
}
if(global.hp = 5){
	draw_sprite(spr_hp,1,185,80)
}
if(global.hp = 4){
	draw_sprite(spr_hp,2,185,80)
}
if(global.hp = 3){
	draw_sprite(spr_hp,3,185,80)
}
if(global.hp = 2){
	draw_sprite(spr_hp,4,185,80)
}
if(global.hp = 1){
	draw_sprite(spr_hp,5,185,80)	
}
if(global.hp = 0){
	draw_sprite(spr_hp,6,185,80)	
}
#endregion

draw_set_color(c_white)
draw_text(140,100,"Pontos: "+ string(global.pontos));
draw_text(140,125,"Recorde: "+ string(global.recorde));

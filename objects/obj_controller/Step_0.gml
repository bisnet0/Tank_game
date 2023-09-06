
image_xscale = min(image_xscale + 0.02, 1);
image_yscale = image_xscale;

if image_xscale == 1 instance_change(obj_enemy, true);


 // Verifique se é hora de spawnar um inimigo
if (timer >= spawn_interval) {
    // Gere um número aleatório de 0 a 3 para escolher um dos quatro cantos
    var random_corner = irandom(1);
	var querodormir = 4
    // Defina as coordenadas x e y de acordo com o canto escolhido
    var x_spawn , y_spawn;
while(querodormir<=4){
    switch (random_corner) {


        case 0: // Canto superior direito
            x_spawn = (room_width-100);
            y_spawn = (room_height-704);
            break;

        case 1: // Canto inferior esquerdo
            x_spawn = (room_width-1282);
            y_spawn = (room_height-87);
            break;

    }
	
    instance_create_layer(x_spawn, y_spawn, "Instances",obj_controller); 
	timer = 0;
   
}
querodormir --
timer++;
	

}


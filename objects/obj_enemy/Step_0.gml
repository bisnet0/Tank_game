x+=lengthdir_x(velocidade,direcao); //mover o inimigo

if(x<=x_limite_esq || x>=x_limite_dir){
direcao = 180-direcao // inverte a direção 
}



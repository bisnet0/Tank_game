
with (other)
{
    hp = hp - 1;
}
instance_create_layer(x,y,"Instances",obj_explosion)
audio_play_sound(snd_volcano,3,false)
instance_destroy();
global.pontos +=10
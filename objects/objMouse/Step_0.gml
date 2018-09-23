/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

var inst = instance_nearest(x,y,objSquid);
var r = 96;
if distance_to_object(inst) < r{
	if played = false{
	audio_play_sound(sndChase,0,true);
	played = true;
	}
	audio_sound_gain(sndChase,(distance_to_object(inst)-r)*-1/r,01);
}else{
	audio_stop_sound(sndChase);
	played = false;
}
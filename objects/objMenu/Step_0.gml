/// @description Insert description here
// You can write your code in this editor
	timer++;
	if timer >= time{
		var cha = choose(0,1);
		if cha = 1{
		audio_play_sound(choose(sndBg1,sndBg2),0,false);
		}
		timer = 0;
	}
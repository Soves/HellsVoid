/// @description Insert description here
// You can write your code in this editor
if global.soundInit = true && playing = false{
	switch(room){
		
	case rmMenu:
		audio_play_sound(sndTheme,10,true);
		playing = true;
		;break;
		
	case rmGame:
		audio_play_sound(sndOutside,10,true);
		playing = true;
		;break;
	}
}
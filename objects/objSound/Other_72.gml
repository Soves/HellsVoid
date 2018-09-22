audio_group_set_gain(background_music,0,0);
global.soundInit = true;
if room = rmMenu{
	audio_play_sound(sndTheme,10,true);
}

audio_group_set_gain(background_music,global.musicGain,100);
audio_group_set_gain(sound_effects,global.sfxGain,100);
audio_group_set_gain(background_music,0,0);
global.soundInit = true;

audio_group_set_gain(background_music,global.musicGain,100);
audio_group_set_gain(sound_effects,global.sfxGain,100);
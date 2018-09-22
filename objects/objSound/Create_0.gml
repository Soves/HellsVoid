/// @description Initialize sound

audio_group_load(background_music);
audio_group_load(sound_effects);

//sound variables
global.musicGain = .5;
global.sfxGain = .6;
global.soundInit = false;
/// @description initialization of menu

//array of menu buttons to draw

mButton[0] = "New Game"; // start new game + will ask for confirmation
mButton[1] = "Load Game"; // load a already save game
mButton[2] = "Settings" //enter setting in the menu

nButton[0] = "yes";
nButton[1] = "no";
mButtonSelected = -1;
mLimit = array_length_1d(mButton);
//sprites

title = sprTitle_m; // title image at the top

//fonts

font1_ = fntBahnschrift; // font for button text's

//sounds

sound1_ = sndTheme; // background song

//booleans
enum showMenu{
	newGame,
	loadGame,
	settings,
	main
}
page = showMenu.main;

//list of resolutions
UiWidth = 0;
UiHeight = 0;

UiWidths[0] = 1280;
UiWidths[1] = 1080;

UiHeights[0] = 720;
UiHeights[1] = 1920;

//ui alignment
UiAlingX = UiWidths[UiWidth]/2;
UiAlingY = UiHeights[UiHeight]/4;

display_set_gui_size(UiWidths[UiWidth],UiHeights[UiHeight]);

//start audio

if room = rmMenu{
	audio_group_set_gain(background_music,global.musicGain,10*room_speed);
	audio_play_sound(sndTheme,10,true);
}


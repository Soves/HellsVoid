/// @description Insert description here
// You can write your code in this editor
switch(page){
	case showMenu.newGame:
	#region
		switch(mButtonSelected){
			case 0://yes
				room_goto(rmGame);
			break;
			case 1://no
				page = showMenu.main;
			;break;
		}
	#endregion
	;break;
	case showMenu.main:
	#region
		if mButtonSelected >= 0 && mButtonSelected <= array_length_1d(mButton){
			page = mButtonSelected;
			mButtonSelected = -1;
		}
	#endregion
	;break;
	
}
audio_play_sound(sndSelect1,2,false);
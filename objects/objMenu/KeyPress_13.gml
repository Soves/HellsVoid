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
		page = mButtonSelected;
		mButtonSelected = -1;
	#endregion
	;break;
}
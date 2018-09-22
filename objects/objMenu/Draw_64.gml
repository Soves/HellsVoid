/// @description Insert description here
// You can write your code in this editor
switch (page){ //draw menu pages
	
	case showMenu.main:
		#region
		if mLimit != array_length_1d(mButton){
		mLimit = array_length_1d(mButton);
		}
		gpu_set_tex_filter(true);
		draw_sprite_ext(sprTitle_m,0,UiAlingX,UiAlingY+wave(-5,5,2,0),1,1,0,image_blend,image_alpha);
		gpu_set_tex_filter(false);
		
		draw_set_font(font1_);
		draw_set_halign(fa_center);
		for (var i = 0; i < array_length_1d(mButton); i++){
			if mButtonSelected = i{
				draw_set_color(c_red);
				draw_text_transformed(UiAlingX,UiAlingY*2+i*64,mButton[i],1.2,1.2,0);
				draw_set_color(c_white);
			}else{
				draw_text_transformed(UiAlingX,UiAlingY*2+i*64,mButton[i],1,1,0);
			}
		}
		draw_set_halign(fa_left);
		draw_set_font(fntDefault);
		#endregion
		;break;
		
	case showMenu.newGame:
	#region
	if mLimit != 2{
		mLimit = 2;
	}
	
	draw_set_font(font1_);
	draw_set_halign(fa_center);
	draw_text_transformed_color(UiAlingX,UiAlingY,"create a new game?",1,1,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
	
		for (var i = 0; i < mLimit; i++){
			if mButtonSelected = i{
				draw_set_color(c_red);
				draw_text_transformed(UiAlingX,UiAlingY*2+i*64,nButton[i],1.2,1.2,0);
				draw_set_color(c_white);
			}else{
				draw_text_transformed(UiAlingX,UiAlingY*2+i*64,nButton[i],1,1,0);
			}
		}
		
	draw_set_halign(fa_left);
	draw_set_font(fntDefault);
	#endregion
		;break;
	
	case showMenu.loadGame:
	//check if save exists
		room_goto(rmGame);
		;break;
	
	case showMenu.settings:
	//add settings later
		page = showMenu.main;
		;break;
	
}

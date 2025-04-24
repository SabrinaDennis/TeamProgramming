function textBox(_text, _pos_x, _pos_y, _centered=true, _size="big",_anchorEdge = false){
	if(_text == "") return;

	// Text Config
	var lineSeperation = string_height("A")+5;
	var maximumLineWidth = 600;
	draw_set_color(c_white);
	draw_set_font(PressStart2P);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	// Grab Text Height/Width (With Line Seperation)
	var textBoxMargin = 20;
	var textHeight    = round(string_height_ext(_text,lineSeperation,maximumLineWidth) + textBoxMargin);
	var textWidth     = round(string_width_ext(_text,lineSeperation,maximumLineWidth) + textBoxMargin);


	var box_xposition;
	var box_yposition;
	
	if(_anchorEdge == false){
		// Text box variables
		box_xposition  = round(_pos_x - 10 - textWidth  * (_centered ? 0.5 : 0));
		box_yposition  = round(_pos_y - 10 - textHeight * (_centered ? 0.5 : 0));
	}else{
		// Anchoring to the top right edge of screen
		box_xposition  = _pos_x - textWidth - textBoxMargin;
		box_yposition  = 10 //textHeight + textBoxMargin;
		global.textBoxHeight = 10 + textHeight + textBoxMargin;
	}
	
	
	// 9 Slice menu box
	draw_sprite_stretched(spr_menuBox,0,box_xposition,box_yposition,textWidth,textHeight)
	
	
	
	
	// Text Positions
	var text_xposition;
	var text_yposition;

	if(_anchorEdge == false){
		// Normal placement
		text_xposition = _pos_x - textWidth  * (_centered?0.5:0);
		text_yposition = _pos_y - textHeight * (_centered?0.5:0);
	}else{
		// Anchored top right
		text_xposition = _pos_x - textWidth - (textBoxMargin / 2);
		text_yposition = textBoxMargin
	}
	
	// Draw our text!
	draw_text_ext(text_xposition,text_yposition,string_trim(_text),lineSeperation,maximumLineWidth)
}

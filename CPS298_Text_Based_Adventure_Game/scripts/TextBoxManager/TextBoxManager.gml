function TextBoxManager(){

}

function textBox(_text, _pos_x, _pos_y, _height=-1, _width=-1, _centered=true, _size="big"){
	if(_text == "") return;
	_text = string_trim(_text);
	// Text Config
	var lineSeperation = string_height("A")+5;
	var maximumLineWidth = 500;
	draw_set_color(c_white);

	var displayArray= [""];
	if(_height<0 && _width<0){
		
		// Grab Text Height/Width (With Line Seperation)
		var textHeight = string_height_ext(_text,lineSeperation,maximumLineWidth);
		var textWidth = string_width_ext(_text,lineSeperation,maximumLineWidth)

		// Text box variables
		var box_xposition = _pos_x-10-textWidth*(_centered?0.5:0);
		var box_yposition = _pos_y-10-textHeight*(_centered?0.5:0);
		var box_xposition2 = _pos_x+10+textWidth*(_centered?0.5:1.0);
		var box_yposition2 =  _pos_y+10+textHeight*(_centered?0.5:1.0);
		
		// 9 Slice menu box
		draw_sprite_stretched(spr_menuBox,0,box_xposition,box_yposition,textWidth+20,textHeight+20)
				
		// Text Positions
		var text_xposition = _pos_x-textWidth*(_centered?0.5:0);
		var text_yposition = _pos_y-textHeight*(_centered?0.5:0);

		draw_text_ext(text_xposition,text_yposition,_text,lineSeperation,maximumLineWidth)
		
		//DRAWTEXT displayArray[0]
		//square
	} else if(_height<0){
		//fitWidth
	} else if(_width<0){
		//fitHeight
	} else {
		//straight
	}
	
}
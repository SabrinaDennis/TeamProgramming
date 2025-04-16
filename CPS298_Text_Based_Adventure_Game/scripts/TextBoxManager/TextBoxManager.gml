function TextBoxManager(){

}

function textBox(_text, _pos_x, _pos_y, _height=-1, _width=-1, _centered=true, _size="big"){
	if(_text == "") return;
	_text = string_trim(_text);
	var thisFont = draw_get_font();
	var letterHeight = string_height("A");
	var letterWidth = string_width("M");
	var rawWidth = 4*string_width(_text);
	var textArray = string_split_ext(_text,[" ","\n"], true);
	
	var displayArray= [""];
	if(_height<0 && _width<0){
		var line=0;
		var word=0;
		var maxWidth = 0;
		var maxHeight = 0;
		var height = 3*sqrt(rawWidth);
		var width = 5*sqrt(rawWidth);
		for(var i=0; i<array_length(textArray); i++){
			if(string_width(displayArray[line]+" "+array_first(textArray))>width){
				if(displayArray[line]!=""){
					displayArray[line]= string_trim(displayArray[line]);
				}
				array_push(displayArray, textArray[i]);
				line++;
			} else {
				displayArray[line]+= " "+textArray[i];
			}
		}
		
			var result = "";
		for(var i=0; i< array_length(displayArray);i++){
			result+=string_trim(displayArray[i])+"\n";
		}
		result = string_trim(result);
		var textHeight = string_height_ext(result,-1,-1);
		var textWidth=string_width(result);
		//draw_set_color(c_ltgray);
		
		
		// Text box variables
		var box_xposition = _pos_x-10-(_centered?textWidth*0.5:0);
		var box_yposition = _pos_y-10-(_centered?textHeight*0.5:0);
		var box_xposition2 = _pos_x+10+textWidth*(_centered?0.5:1.0);
		var box_yposition2 =  _pos_y+10+textHeight*(_centered?0.5:1.0);
		
		// Calculate actual box dimensions
		var box_width = box_xposition2 - box_xposition;
		var box_height = box_yposition2 - box_yposition;
		
		// Old background rectangle
		//draw_roundrect(box_xposition, box_yposition,box_xposition2, box_yposition2,false)
		
		// 9 Slice menu box
		draw_sprite_stretched(spr_menuBox,0,box_xposition,box_yposition,box_width,box_height)
		

		
		// Text Positions
		var text_xposition = _pos_x-(_centered?textWidth/2:0);
		var text_yposition = _pos_y-(_centered?textHeight/2:0);
		
		draw_set_color(c_white);
		draw_text(text_xposition, text_yposition, result);
		
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
function TextBoxManager(){

}

function textBox(_text, _pos_x, _pos_y, _height=-1, _width=-1, _centered=true, _size="big"){
	if(_text == "") return;
	_text = string_trim(_text);
	var thisFont = draw_get_font();
	var letterHeight = string_height("O");
	var letterWidth = string_width("O");
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
		draw_set_color(c_ltgray);
		draw_roundrect(_pos_x-10-(_centered?textWidth*0.5:0), _pos_y-10-(_centered?textHeight*0.5:0),_pos_x+10+textWidth*(_centered?0.5:1.0), _pos_y+10+textHeight*(_centered?0.5:1.0),false)
		draw_set_color(c_black);
		draw_text(_pos_x-(_centered?textWidth/2:0), _pos_y-(_centered?textHeight/2:0), result);
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
function TextBoxManager(){

}

function textBox(text, pos_x, pos_y, _height=-1, _width=-1, centered=true, size="big"){
	var thisFont = PressStart2P;
	draw_set_font(thisFont);
	var _letterHeight = string_height("O");
	var _letterWidth = string_width("O");
	
	var textArray = string_split_ext(text,[" ","\n"], true);
	var rawWidth = string_length(text)*_letterWidth;
	var displayArray= [];
	if(_height<0 && _width<0){
		_height=ceil(sqrt(array_length(textArray)*letterWidth));
		_width=ceil((array_length(textArray)*letterWidth)/_height)
		var line=0;
		var word=0;
		_maxWidth = 0;
		_maxHeight = 0;
		while(array_length(textArray)>0){
			while(_letterWidth*(string_length(displayArray[line])+string_length(array_last(textArray))+1)<_width){
				displayArray[line] = string_concat(displayArray[line], string_concat(array_pop(textArray)," "));
			}
			displayArray[line]=string_concat(displayArray[line], "\n");
			_maxWidth = max(string_width(displayArray[line]), _maxWidth);
			line++;
		}
		_width = maxWidth;
		while(array_length(displayArray)>1){displayArray[0] = string_concat(displayArray[0], displayArray[1])}
			
		_height = string_height(displayArray[0]);
		
		//DRAWTEXT displayArray[0]
		//square
	} else if(_height<0){
		//fitWidth
	} else if(_width<0){
		//fitHeight
	} else {
		//straight
	}
	
	draw_text(0,0,text);
}
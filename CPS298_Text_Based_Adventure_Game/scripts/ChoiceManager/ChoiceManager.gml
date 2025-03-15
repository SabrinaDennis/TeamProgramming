function ChoiceManager(funcName){
	switch(funcName){
		case "choice 1,1":
			show_debug_message("arbitrary code");
			break;
		case "choice 1,2":
			show_debug_message("whaaat");
			break;
		default:
			show_debug_message("Im out of ideas.");
			break;
	}
}
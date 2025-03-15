function ChoiceManager(funcName, parameter){
	//TODO add obvious checks here
	switch(funcName){
		case "fight":
			show_debug_message(string_concat("you battle a ", parameter[0], " and win.  Yay!"));
			break;
		case "shop":
			show_debug_message(string_concat("The shopkeeper nods at you and offers you ", parameter[0], " but like as an array of items and prices."));
			break;
		case "find":
			show_debug_message(string_concat("You find a shiny ", parameter[0], "! how nice."));
			break;
		case "lose":
			show_debug_message(string_concat("check if you have ", parameter[0], " and if you do?  You don't."));
			break;
		case "blocked":
			show_debug_message(string_concat("If you don't have a ", parameter[0], " you go to index ", parameter[1], ", but if you do have it, you go to ", parameter[2],"."));
			break;
		case "nothing":
			show_debug_message(string_concat("You just go to the next part."));
			break;
		default:
			show_debug_message(string_concat("funcName not in list"));
			break;
	}
}
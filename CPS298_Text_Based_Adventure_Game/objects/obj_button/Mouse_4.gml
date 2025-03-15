draw_set_color(c_red);
global.currentIndex=choiceTarget;
show_debug_message(global.currentIndex);
//Goes to the big switch
ChoiceManager(choiceFunc);
//RoomManager Script Functions
destroyAllObjects();
populateAllObjects();
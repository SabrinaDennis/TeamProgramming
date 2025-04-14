draw_set_color(c_red);
global.currentIndex=choiceTarget;
show_debug_message(global.currentIndex);
FuncManager(choiceFunc, choiceFuncParameters);

//RoomManager Script Functions
destroyAllObjects();
populateAllObjects();
/// @description 
//check keys 
//var key = keyboard_check_pressed(vk_anykey);
if (global.currentState == gamestate.overworld){
	PlayerMovement();
} else if (global.currentState == gamestate.combat) {
	//do menu stuff
} else if (global.currentState == gamestate.pause) {
	//freeze background
}
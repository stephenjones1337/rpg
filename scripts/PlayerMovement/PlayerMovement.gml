// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMovement(){
	//var angle = -1;
	keyUp		= keyboard_check(ord("W"));
	keyDown		= keyboard_check(ord("S"));
	keyLeft		= keyboard_check(ord("A"));
	keyRight	= keyboard_check(ord("D"));
	
	if		(keyUp)		movePlayer(90);
	else if (keyDown)	movePlayer(270);
	else if (keyLeft)	movePlayer(180);
	else if (keyRight)	movePlayer(0);
	else speed = 0;
	//movePlayer(0);
}

function movePlayer(angle){		
	direction = angle;
	speed = 10;
	
	//collision
	playerCollision(angle);
}
/*
function isMoveKey(){
	if (!vk_anykey == ord("W") or ord("A") or ord("S") or ord("D")) {
		show_debug_message(vk_anykey);
		return true;
	} else {
		return false;
	}	
}
*/
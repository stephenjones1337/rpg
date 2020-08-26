// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMovement(){
	//var angle = -1;
	//get input
	keyUp		= keyboard_check(ord("W")) or keyboard_check(vk_up);
	keyDown		= keyboard_check(ord("S")) or keyboard_check(vk_down);
	keyLeft		= keyboard_check(ord("A")) or keyboard_check(vk_left);
	keyRight	= keyboard_check(ord("D")) or keyboard_check(vk_right);
	
	inputDirection = point_direction(0,0,keyRight-keyLeft, keyDown-keyUp); //0,90,180,270 - right up left down
	inputMagnitude = (keyRight - keyLeft != 0) or (keyDown-keyUp != 0);
	
	//commit move
	hSpeed = lengthdir_x(inputMagnitude * walkSpd, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * walkSpd, inputDirection);
	
	x += hSpeed;
	y += vSpeed;
	
	//update sprite index for animation
	var oldSprite = sprite_index;
	if (inputMagnitude != 0) {
		direction = inputDirection;
		sprite_index = spriteRun;
	} else {
		sprite_index = spriteIdle;
	}
	
	if (oldSprite != sprite_index) localFrame = 0;
	
	//update image index
	AnimatePlayer();
}
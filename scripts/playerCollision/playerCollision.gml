// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerCollision(angle){
	//var up	  = angle == 90; //up
	//var down  = angle == 270; //down
	//var left  = angle == 180; //left
	//var right = angle == 0; //right
	
	if (keyUp) {
		collideUp();
	} else if (keyDown) { 
		collideDown();
	} else if (keyLeft) {
		collideLeft();
	} else if (keyRight) {
		collideRight();
	}
}

function collideUp(){
	if (!place_free(oPlayer.x, oPlayer.y-1)) {
		while(keyUp and place_free(oPlayer.x, oPlayer.y)) {
			oPlayer.y--;
		}
		speed = 0;
	}
}

function collideDown(){
	if (!place_free(oPlayer.x, oPlayer.y+1)) {
		while(keyDown and place_free(oPlayer.x, oPlayer.y)) {
			oPlayer.y++;
		}
		speed = 0;
	}
}

function collideLeft(){
	if (!place_free(oPlayer.x-1, oPlayer.y)) {
		while(keyLeft and place_free(oPlayer.x, oPlayer.y)) {
			oPlayer.x--;
		}
		speed = 0;
	}
}

function collideRight(){
	if (!place_free(oPlayer.x+1, oPlayer.y-1)) {
		while(keyRight and place_free(oPlayer.x, oPlayer.y)) {
			oPlayer.x++;
		}
		speed = 0;
	}
}
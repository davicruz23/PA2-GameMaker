var tolerance = 20;


if ((keyboard_check_pressed(49) ||keyboard_check_pressed(vk_numpad1)) && abs(oPlayer.x - oLixeiraVidro.x) < tolerance && abs(oPlayer.y - oLixeiraVidro.y) < tolerance && global.aluminum >0) {
    
    global.aluminum -= 1;
	global.pontos -= 1;
	
    if (global.aluminum < 0) {
        global.aluminum = 0;
    }
	

}


if ((keyboard_check_pressed(50) || keyboard_check_pressed(vk_numpad2)) && abs(oPlayer.x - oLixeiraVidro.x) < tolerance && abs(oPlayer.y - oLixeiraVidro.y) < tolerance && global.plastic >0) {
    
    global.plastic -= 1;
	global.pontos -= 1;
	
    if (global.plastic < 0) {
        global.plastic = 0;
    }
	

}

if ((keyboard_check_pressed(51) || keyboard_check_pressed(vk_numpad3)) && abs(oPlayer.x - oLixeiraVidro.x) < tolerance && abs(oPlayer.y - oLixeiraVidro.y) < tolerance && global.fruit >0) {
    
    global.fruit -= 1;
	global.pontos -= 1;
	
    if (global.fruit < 0) {
        global.fruit = 0;
    }
	

}

if ((keyboard_check_pressed(52) || keyboard_check_pressed(vk_numpad4)) && abs(oPlayer.x - oLixeiraVidro.x) < tolerance && abs(oPlayer.y - oLixeiraVidro.y) < tolerance && global.paper >0) {
    
    global.paper -= 1;
	global.pontos -= 1;
	
    if (global.paper < 0) {
        global.paper = 0;
    }
	

}

if ((keyboard_check_pressed(53) || keyboard_check_pressed(vk_numpad5)) && abs(oPlayer.x - oLixeiraVidro.x) < tolerance && abs(oPlayer.y - oLixeiraVidro.y) < tolerance && global.vidro >0) {
    
    global.vidro -= 1;
	global.pontos += 1;
	
    if (global.vidro < 0) {
        global.vidro = 0;
    }
	

}


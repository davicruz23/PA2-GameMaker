if (done == 0)
{
	vsp = vsp + grv;


	// colisao horizontal

	if(place_meeting(x+hsp,y,oWall))
	{
		while(!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}

	x = x + hsp;

	// colisao vertical

	if(place_meeting(x,y+vsp,oWall))
	{
		if (vsp> 0)
		{
			done = 1;
			image_index = 1;
			
			audio_play_sound(mortPersonFinal, 1, false);
		}
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}

	y = y + vsp;
	
	

}

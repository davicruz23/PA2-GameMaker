restart_timer = -1;

if (done == 0)
{
    vsp = vsp + grv;

    // colisão horizontal
    if (place_meeting(x + hsp, y, oWall))
    {
        while (!place_meeting(x + sign(hsp), y, oWall))
        {
            x = x + sign(hsp);
        }
        hsp = 0;
    }

    x = x + hsp;

    // colisão vertical
    if (place_meeting(x, y + vsp, oWall))
    {
        if (vsp > 0)
        {
            done = 1;
            image_index = 1;

            audio_stop_all();
            audio_play_sound(mortPersonFinal, 1, false);
            
            alarm[0] = room_speed * 2;
			
			instance_create_depth(0, 0, -100, oGameOver);
			
        }
        while (!place_meeting(x, y + sign(vsp), oWall))
        {
            y = y + sign(vsp);
        }
        vsp = 0;
    }

    y = y + vsp;
}

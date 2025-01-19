if (room_next(room) != -1)
{
    room_goto_next();
}
else 
{
	instance_create_depth(0, 0, -100, oEndGamer);
	reset_globals();
    alarm[0] = room_speed * 3;
}
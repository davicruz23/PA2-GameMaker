/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (instance_exists(oPlayer))
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo -x) / 25;
y += (yTo -y) / 25;

x = clamp(x,view_w_half, room_width-view_h_half);
y = clamp(y,view_h_half, room_height-view_h_half);

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(layer_exists("Trees"))
{
	layer_x("Trees",x/4);
}

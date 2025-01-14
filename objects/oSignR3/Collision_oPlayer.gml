if (point_in_circle(oPlayer.x,oPlayer.y,x,y,64))&&(!instance_exists(oTextR3))
{
	with (instance_create_layer(x,y-64,layer,oTextR3))	
	{
		text = other.text;
		legth = string_length(text);
	}
	with (oCamera)
	{
		follow = other.id;	
	}
}
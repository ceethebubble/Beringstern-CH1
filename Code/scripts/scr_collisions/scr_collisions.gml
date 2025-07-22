// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision(_obj){
	if instance_exists(_obj)
	{
		if place_meeting(x+collisionSpeed,y+collisionSpeed,_obj) or place_meeting(x-collisionSpeed,y-collisionSpeed,_obj)
		{
			_obj.hover = true;
			obj_player.showKey = true;
		}
		else
		{
			_obj.hover = false;
		}
	}
}

function hover_step()
{
	/// @description Check for hover

if !global.cutscene{
	if hover
	{
	   // Blend the sprite color towards white
	   image_blend = make_color_rgb(240, 240, 255);
	}
	else
	{
	    // Reset to the original color with full opacity
	    image_blend = c_white; // Assuming the original color is unblended
	}
}
else
{
		image_blend = c_white;
}
}
image_alpha = 0.5

// Check if the mouse is over the object, using position_meeting
if (position_meeting(mouse_x, mouse_y, id)) {
   image_xscale -= (image_xscale - original_size_x * 1.2) / 5
   image_yscale -= (image_yscale - original_size_y * 1.2) / 5
   if mouse_check_button(mb_left)
	{
		if file_exists("progressFileDefault.bstrn")
		{
		audio_play_sound(sfx_nope,0,false)
		backUp = file_text_read_string(file_text_open_read("progressFileDefault.bstrn"));
		
		var _json = file_text_read_string(file_text_open_read("progressFileDefault.bstrn"));
		var _struct = json_parse( _json);
		
		var _file = file_text_open_write(_struct.player_name+string(round(random(100)))+".bstrn");
		file_text_write_string(_file,backUp);
	
		backUped = true;
		file_text_close(_file);
		file_delete("progressFileDefault.bstrn")
		}
		else
		{
			if backUped
			{
				show_message("Backup sucsess.")
			}
			else
			{
				show_message("You don't have a save file.")
			}
		}
    }
}
else
{
	image_xscale -= (image_xscale - original_size_x) / 5
    image_yscale -= (image_yscale - original_size_y) / 5
}

image_angle = random_range(-1.1,1.1)
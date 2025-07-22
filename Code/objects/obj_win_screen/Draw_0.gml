draw_set_alpha(1)
draw_set_color(c_white)

if (file_exists(screenshot_file_path)) && (!variable_global_exists("room_screenshot") or screenshot_sprite = -1)
    screenshot_sprite = sprite_add(screenshot_file_path,1,false,false,0,0)

draw_sprite(screenshot_sprite,0,0,0)

draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)

draw_player_colors()

draw_self()

var last_frame = sprite_get_number(sprite_index) - 1;
if (image_index >= last_frame) {
    // Do this on the last frame!
	image_speed = 0;
}

shader_reset()

draw_set_font(fnt_pixel)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_text_transformed(480,96,"RESULTS",1.5,1.5,0)
if (showResults)
{
	draw_text_transformed(212,320,"TIME " + timeNumbers,1,0.8,0)
	draw_text_transformed(288,384,"HP " + hpNumbers,1,0.8,0)
	draw_text_transformed(160,448,"STYLE " + string(styleRatio*999),1,0.8,0)
	
	draw_sprite_ext(spr_gui_ratings,finalRatingFake,1050,400,0.8 - (finalScoreScale),0.8 - (finalScoreScale),0,c_black,0.4 - (finalScoreScale/2)) //shadow
	draw_sprite_ext(spr_gui_ratings,finalRatingFake,1024,384,finalScoreScale,finalScoreScale,0,c_white,1) //real thing
	draw_text_transformed(948,512,"RANK",0.85,0.65,0)
}

finalScoreScale += ( 0.42 - finalScoreScale ) / 5
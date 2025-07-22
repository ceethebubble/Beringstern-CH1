draw_set_font(fnt_serif)
draw_set_color(c_white)
draw_self()
draw_text_transformed(x - 120,y - 20,"Money Get",image_yscale / 70,image_yscale / 70,image_angle / 5 )

if draw_stuff
{
	make_fancy_number(1,500, 500, 0.2,alpha)
	draw_sprite_ext(spr_gui_icon_money_single,0,380,520,0.3,0.3,0,c_white,alpha)
}

// Inherit the parent event

if image_alpha >= 1
	event_inherited();
	
if (point_distance(x, y, obj_player.x, obj_player.y) <= 20)
	global.stylishPoints += 0.25

image_xscale = lerp(image_xscale, target_scale, scale_speed);

if timer2 < 8
{
	audio_stop_sound(sfx_dong)
	play_sfx(sfx_dong)
	if timer2 == 0
		timer2 = 10
	image_alpha = 0.01
}
else
{
	image_alpha = 1
}
	
if instance_exists(obj_battle_enemy_2)
{
	if obj_battle_enemy_2.image_index >= 30 && obj_battle_enemy_2.sprite_index = spr_enemy_2_attack
		alarm[3] = 20 // Wait a bit before destroying
}
	
image_yscale = 2 / image_xscale

if timer2 > 0
	timer2 -= 1

x += xchange
image_angle += angledir
angledir += (angledir/35)
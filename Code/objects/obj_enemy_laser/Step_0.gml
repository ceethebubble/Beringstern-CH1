// Inherit the parent event

if image_alpha >= 1
	event_inherited();
	
if (point_distance(x, y, obj_player.x, obj_player.y) <= 20)
	global.stylishPoints += 0.25

image_xscale = lerp(image_xscale, target_scale, scale_speed);

if round(alphathing) = alphathing or alphathing + 0.5 = round(alphathing)
{
	audio_stop_sound(sfx_dong)
	play_sfx(sfx_dong)
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

x += xchange
image_angle += angledir
angledir += (angledir/35)
// Inherit the parent event

if image_alpha >= 1
	event_inherited();
	
if (point_distance(x, y, obj_player.x, obj_player.y) <= 20)
	global.stylishPoints += 0.25

image_xscale = lerp(image_xscale, target_scale, scale_speed);

if changing
{
	if timer2 < 6
	{
		image_angle += angledir
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
	angledir += (angledir/35)
}
else
{	
	// Get the difference
	var diff = angle_difference(image_angle, point_direction(obj_battle_enemy_2.x,obj_battle_enemy_2.y,obj_player.x,obj_player.y));
	
	// Determine if player is to the left or right
	if (diff < 0) {
	    angledir = -0.25
	} else {
	    angledir = 0.25
	}
	image_alpha += 0.03
	if image_alpha >= 1
		changing = true;
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

if obj_battle_enemy_2.sparing or obj_battle_enemy_2.dying
	instance_destroy()
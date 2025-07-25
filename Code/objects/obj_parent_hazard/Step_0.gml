if place_meeting(x, y, obj_player) and timer <= 0
{
	global.hp -= damage;
	global.stylishPoints -= 10
	draining = drain
	play_sfx(sfx_hurt)
	timer = cooldown
}

if (point_distance(x, y, obj_player.x, obj_player.y) <= 20)
	global.stylishPoints += 0.25

if timer > 0
	timer -= 1 / room_speed

if draining > 0
{
	global.stylishPoints -= 0.25
	draining -= 1 / room_speed
}
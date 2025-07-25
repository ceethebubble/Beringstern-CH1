if not dying and not sparing
{
	instance_create_depth(x+20,y-5,depth-999,obj_enemy_laser)
	if instance_exists(obj_enemy_laser) obj_enemy_laser.angledir = 0.35
	instance_create_depth(x-15,y-5,depth-999,obj_enemy_laser)
}
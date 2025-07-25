// change!
damage = 20 // how much damage
cooldown = 0.5 // in seconds, the cooldown
drain = 0.5 // how long to drain style points
image_angle = point_direction(x, y, obj_player.x, obj_player.y) - 180
image_xscale = 0;
image_yscale = 2;
target_scale = 2; // how big you want it to get
scale_speed = 0.1; // how fast it gets there
image_alpha = 0.2
image_blend = c_white
changing = false;
audio_play_sound(sfx_shock,0,false)

// do NOT change!
timer = 0
draining = 0
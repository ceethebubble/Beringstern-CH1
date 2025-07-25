///The battlegroups!

function scr_battlegroups()
{
	switch (global.battlegroup)
	{
		case 0:
			background = "overworldg"
			music = msc_enemyt_overworld
			battle_object = obj_battle_parent
			opponent_name = "Test Battle"
			global.opponent_maxhp = 10
			opponent_icon_sprite = spr_dialog_enemy_0
			global.playerx = 1024
			global.playery = 650
			
			global.battletime = 9
			global.styleGoal = 20
			break;
		case 1:
			background = "overworldg"
			music = msc_enemyt_overworld
			battle_object = obj_battle_enemy_1
			opponent_name = "Blightbot A"
			global.opponent_maxhp = 50
			opponent_icon_sprite = spr_dialog_enemy_1
			global.playerx = 1024
			global.playery = 650
			
			global.battletime = 5
			global.styleGoal = 5
			break;
		case 2:
			background = "overworldg"
			music = msc_enemyt_overworld
			battle_object = obj_battle_enemy_2
			opponent_name = "Blightbot B"
			global.opponent_maxhp = 70
			opponent_icon_sprite = spr_dialog_enemy_2
			global.playerx = 1024
			global.playery = 650
			
			global.battletime = 5
			global.styleGoal = 5
			break;
	}
}

function start_encounter()
{
	instance_create_depth(0,0,-9999,obj_encounter_transition)
}
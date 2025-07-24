function config_load_json() {
    var _file_path = "config.json"; // File name or path
    if (file_exists(_file_path)) {
        var _file = file_text_open_read(_file_path);
        var _json = "";
        
        // Read the entire file content
        while (!file_text_eof(_file)) {
            _json += file_text_read_string(_file);
            file_text_readln(_file); // Move to the next line
        }
        
        file_text_close(_file);
        
        try {
            var _struct = json_parse(_json);
            global.config_data = _struct;
        } catch (e) {
            show_error("Failed to parse JSON: " + string(e), true);
            global.config_data = undefined;
        }
    } else {
        show_error("JSON file not found: " + _file_path, true);
        return undefined;
    }
}

function ds_list_to_array(_list)
{
    var _size = ds_list_size(_list);
    var _array = array_create(_size);
    
    for (var i = 0; i < _size; i++)
    {
        _array[i] = ds_list_find_value(_list, i);
    }
    
    return _array;
}

function draw_player_colors()
{
	// --- AVATAR COLOR SETTINGS ---
	avatarBaseR = global.avatarR;
	avatarBaseG = global.avatarG;
	avatarBaseB = global.avatarB;
	
	avatarOutlineR = global.outlineAvatarR;
	avatarOutlineG = global.outlineAvatarG;
	avatarOutlineB = global.outlineAvatarB;
	
	avatarFaceR = global.faceAvatarR;
	avatarFaceG = global.faceAvatarG;
	avatarFaceB = global.faceAvatarB;
	
	avatarShoeR = global.shoeAvatarR;
	avatarShoeG = global.shoeAvatarG;
	avatarShoeB = global.shoeAvatarB;

	// --- THE DRAWING ---
	
	if global.name_of_avatar = "character red"
	{
		global.avatar = shdr_player_red
		shader_set_uniform_f(shader_get_uniform(shdr_player_red, "char_index"), global.char_index);

	}
	if global.name_of_avatar = "character neon"
	{
		global.avatar = shdr_player_neon
	}
	if 	global.name_of_avatar = "character pink"
	{
		global.avatar = shdr_player_pink
	}
	if global.name_of_avatar = "character black and white"
	{
		global.avatar = shdr_player_grayscale
	}
	if global.name_of_avatar = "character purple"
	{
		global.avatar = shdr_player_purple
	}
	if global.name_of_avatar = "character white"
	{
		global.avatar = shdr_player_white
	}
	if global.name_of_avatar = "character gray"
	{
		global.avatar = shdr_player_gray
	}
	if global.name_of_avatar = "character ghost"
	{
		global.avatar = shdr_player_ghost
	}
	if global.name_of_avatar = "character custom"
	{
		global.avatar = shdr_player_custom
	}
	
	if image_alpha > 0
	{
		shader_set(global.avatar)
	}
	
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarR"), avatarBaseR);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarG"), avatarBaseG);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarB"), avatarBaseB);
	
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineR"), avatarOutlineR);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineG"), avatarOutlineG);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarOutlineB"), avatarOutlineB);
	
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceR"), avatarFaceR);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceG"), avatarFaceG);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarFaceB"), avatarFaceB);
	
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeR"), avatarShoeR);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeG"), avatarShoeG);
	shader_set_uniform_f(shader_get_uniform(shdr_player_custom, "avatarShoeB"), avatarShoeB);
}

function fade_to_room(roomToGo,changingPos=false,playerXTo=0,playerYTo=0)
{
		global.cutscene = true;
		var fadeObj = instance_create_depth(0,0,-9999, obj_fade)
		fadeObj.roomtrans = roomToGo
		fadeObj.playerchangepos = changingPos
		fadeObj.xgoing = playerXTo
		fadeObj.ygoing = playerYTo
}

function settings_sections(_section,_number,_label)
{
	if _section = _number
		draw_set_color(make_color_rgb(40,10,40))
	else
		draw_set_color(make_color_rgb(128,20,128))
	
	draw_text_transformed(600,_number*100+150,_label,0.6,0.6,0)
}

function getlines(_str) {
    var count = 0;
    var pos = 1;
    
    while (pos != 0) {
        pos = string_pos("\n", _str);
        if (pos > 0) {
            count += 1;
            _str = string_delete(_str, pos, 1);
        }
    }
    
    return count;
}
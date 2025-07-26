if num = 1 // pistola
{
sprite_index = spr_pistola	
}
if num = 0 // faca
{
sprite_index = spr_faca
}
if num = 2 // shotgun
{
sprite_index = spr_shotgun
}
if num = 3 // metralhadora
{
sprite_index = spr_metralhadora
}
// se a pistola for comprada
if distance_to_object(obj_player) <=20 && num = 1 
{
	if keyboard_check_pressed(ord("E")) && obj_player_info.moedas >=15
		{
		instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_pistola)	
		instance_destroy()
		obj_player_info.moedas -=15
		global.comprou = 3
		audio_play_sound(comprando,1,0)
		}
}

// se a shotgun for comprada
if distance_to_object(obj_player) <=20 && num = 2 
{
	if keyboard_check_pressed(ord("E")) && obj_player_info.moedas >=30
		{
		instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_shotgun)	
		instance_destroy()
		obj_player_info.moedas -=30
		global.comprou = 2
		audio_play_sound(comprando2,1,0)
		}
}

// se a faca for comprada
if distance_to_object(obj_player) <=20 && num = 0 
{
	if keyboard_check_pressed(ord("E")) && obj_player_info.moedas >=8
		{
		instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_faca)	
		instance_destroy()
		obj_player_info.moedas -=8
		global.comprou = 1
		audio_play_sound(comprando,1,0)
		}
}

// se a faca for comprada
if distance_to_object(obj_player) <=20 && num = 3 
{
	if keyboard_check_pressed(ord("E")) && obj_player_info.moedas >=50
		{
		instance_create_layer(obj_player.x,obj_player.y,"Instances_1",obj_metralhadora)	
		instance_destroy()
		obj_player_info.moedas -=50
		global.comprou = 1
		audio_play_sound(comprando,1,0)
		}
}
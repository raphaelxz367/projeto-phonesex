if global.inimigo = 0
{	
	if (image_index < image_number - 1) {
	    image_index += 1;
	}
	
	if distance_to_object(obj_player) <=36 && keyboard_check_pressed(vk_space) && criou = 0
	{
		instance_create_layer(x,y,"transicao",obj_transicao)
		criou =1
	}
}
if criou =1 
{	
	timer -=1
	if timer <=0
	{
		criou = 0 
	}
}

if obj_transicao.entrando = true
{
if(file_exists("save.sav")) file_delete("save.sav")	
ini_open("save.sav")
ini_write_real("Jogador","Vida_Atual", obj_player.vida)
ini_write_real("Jogador","Dinheiro_Atual", obj_dinheiro_controller.moedas)
ini_close()
show_debug_message("cu preto")
}
if obj_transicao.entrando = false
{
if (file_exists("save.sav")){
	ini_open("save.sav")
	obj_dinheiro_controller.moedas = ini_read_real("Jogador","Dinheiro_Atual",0)
	obj_player.vida = ini_read_real("Jogador","Vida_Atual",100)
	ini_close()
}	
}
if (file_exists("save.sav")){
	ini_open("save.sav")
	global.moedas = ini_read_real("Jogador","Dinheiro_Atual",0)
	obj_player.vida = ini_read_real("Jogador","Vida_Atual",100)
	ini_close()
}
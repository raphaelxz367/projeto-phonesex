#region // espinhos
if distance_to_object(obj_player) <=3
{
	    image_index +=.1; // Aumenta o índice da imagem em 1
		global.ativado = 1 
}
else
{
	image_index = 0 
	global.ativado = 0 
}
#endregion
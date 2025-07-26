//desenhando os quadrados

for (var i = 0; i < lins;  i++)
{
	for (var j = 0 ; j < cols; j ++)
	{
		// celula
		//draw_sprite(spr_quad,8, j * tamanho, i * tamanho)
		// garantindo qe ele vai fazer animacao apartir da primeira coluna
		
		var _img =min(max(0,img - j) , img_num)
		
		draw_sprite_ext(spr_quad,_img , j * tamanho, i * tamanho,1,1,0,c_black,1)
	}
}
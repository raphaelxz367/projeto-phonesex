if (entrando)
{
	//animando a sprite
	img += img_vel
	// preencheu todas a s colunas 
	if (img - img_num > cols +1)
	{
if (entrando) {
	
    img += img_vel;
// outra sala

    if (img - img_num > cols + 1) {
// Vai para a próxima sala da sequência
if (global.indice_fase < array_length(global.salas_rodadas)) {
    var proxima_sala = global.salas_rodadas[global.indice_fase];
    global.indice_fase += 1;
    room_goto(proxima_sala);
	
} else {
    show_debug_message("Fim do jogo ou sequência!");
}
	
        entrando = false;
		jogar = 1
    }
}
else {
    img -= img_vel;
}
		// saindo 
		entrando = false 
			}
		}
else
{
img -= img_vel	
}

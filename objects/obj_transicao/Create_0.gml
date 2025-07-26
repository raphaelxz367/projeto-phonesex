tamanho = sprite_get_width(spr_quad)
jogar = 0 
cols = ceil(room_width / tamanho)

lins	= ceil(room_height / tamanho)

// variaveis animacao sprite
img = 0 
// velocidade 
img_vel = sprite_get_speed(spr_quad) / game_get_speed(gamespeed_fps)
//total da animacao 
img_num = sprite_get_number(spr_quad) - 1

//controlando pra ver se eu estou saindo da animação 
entrando = true 

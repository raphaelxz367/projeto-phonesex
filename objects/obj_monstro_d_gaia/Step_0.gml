#region seguir player
// Velocidade do inimigo
var vel = 2;

// Direção até o jogador
var dir = point_direction(x, y, obj_player.x, obj_player.y);

mp_potential_step(obj_player.x, obj_player.y, 2, false);


#endregion
#region contabilizando para a fase
if contabilizando =1 
{
	global.inimigo +=1
	contabilizando = 0
}
#endregion
#region // animação por codigo
if congelado = 0{
var amplitude = 3;   // Ângulo máximo de inclinação (em graus)
var velocidade = 0.02; // Velocidade da oscilação
}
else{
var amplitude = 0  // Ângulo máximo de inclinação (em graus)
var velocidade = 0; // Velocidade da oscilação
}
image_angle = amplitude * sin(velocidade * current_time);

#endregion
#region  // ataque 

if distance_to_object(obj_player) <=10 && criou = 0
{
sprite_index = spr_mostro_ataque	
instance_create_layer(x,y,"Instances_1",obj_mordida_mostro_d_gaia)
criou = 1
}
else{
sprite_index = spr_mostro_de_gaia	
}

if criou = 1{
timer -=.1
if timer <=0{
		criou = 0 
		timer = 10
	}
}
#endregion
#region // hitflash

alpha = lerp(alpha,0,0.1)

#endregion

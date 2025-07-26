#region //atirando
if  (equipada) {
    x = obj_player.x;
    y = obj_player.y;
	persistent = true

image_angle = point_direction(x,y,mouse_x,mouse_y)

if mouse_check_button_pressed(mb_left) && atirou = 0 && balas >=3
{
// Parâmetros do tiro
balas -=3
atirou = 1
var bullets = 3;         // Quantidade de projéteis
var spread = 10;         // Ângulo de abertura entre tiros (em graus)
var angle_center = image_angle; // Direção principal (olhando para frente)
var bullet_speed = 12;   // Velocidade do projétil

// Loop para atirar múltiplos projéteis
for (var i = 0; i < bullets; i++) {
    var offset = (i - (bullets - 1) / 2) * spread; // Ex: -10, 0, +10 graus
    var final_angle = angle_center + offset;
    
    var bullet = instance_create_layer(x, y, "Instances", obj_tiro);
    bullet.direction = final_angle;
    bullet.speed = bullet_speed;
}

}
}
if atirou = 1{
timer -=1
if timer <=0{
atirou = 0	
timer = 30
}
}

#endregion
#region // jogar a porra da arma fora 

if obj_player.pose_gun = 1 && obj_player.shotgun = 1 && equipada = 1
{
	if keyboard_check_pressed(ord("G"))	
		{
				jogar = 1
			     obj_player.shotgun = 0
				 obj_player.pose_gun = 0 
				 persistent = 0
				 equipada = 0 
				 var shoot_direction = point_direction(x, y, mouse_x, mouse_y);
			     speed = 3.9; // Velocidade da bala
				 direction = shoot_direction; // Direção do disparo
		}
}

if jogar = 1{
speed -=.1

		if speed <=0	{
	speed = 0
	}
}

if distance_to_object(obj_wall) <=1{
speed = 0	
}


#endregion
#region // rotação
#region // angulo
if image_xscale <=70{
image_yscale =-1 	
}
 

if image_angle <=90
{
image_yscale =-1	
}

if image_angle >=270
{
image_yscale =1	
}

#endregion 

#endregion
#region se autodestruir

if !instance_exists(obj_player)
{
instance_destroy()	
}

#endregion
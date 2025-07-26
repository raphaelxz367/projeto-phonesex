#region // faca
if  (equipada) {
    x = obj_player.x;
    y = obj_player.y;
	persistent = true
image_angle = point_direction(x,y,mouse_x,mouse_y)

if mouse_check_button_pressed(mb_left)  && atirou= 0
{
    // Criar uma instância de obj_bullet
	atirou = 1
    var bullet = instance_create_layer(x, y,"Instances_1", obj_corte);
    
    // Determinar a direção do disparo (para a direita)
    var shoot_direction = point_direction(x, y, mouse_x, mouse_y);
    
    // Definir a velocidade da bala na direção do disparo
    bullet.speed = 2.5; // Velocidade da faca
    bullet.direction = shoot_direction; // Direção do disparo
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

if obj_player.pose_gun = 1 && obj_player.faca = 1 && equipada = 1
{
	if keyboard_check_pressed(ord("G"))	
		{
				jogar = 1
			     obj_player.faca = 0
				 obj_player.pose_gun = 0 
				 equipada = 0
				 persistent = 0
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
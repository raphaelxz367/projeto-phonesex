#region // move and coliser 
move = -keyboard_check(ord("A")) + keyboard_check(ord("D")) 

hsp = move * spd
// COLISAO HORIZONTAL COM A PAREDE
if place_meeting(x+hsp,y, obj_wall)
{
	while !place_meeting(x+sign(hsp),y, obj_wall)
		{
		x+=sign(hsp)
		}
	hsp = 0		
}
// COLISAO HORIZONTAL COM A CAIXA
if place_meeting(x+hsp,y, obj_caixa)
{
	while !place_meeting(x+sign(hsp),y, obj_caixa)
		{
		x+=sign(hsp)
		}
	hsp = 0		
}

x+= hsp

move = -keyboard_check(ord("W")) + keyboard_check(ord("S"))

vsp = move * spd

// COLISAO VERTICAL COM A PAREDE
if place_meeting(x,y + vsp, obj_wall)
{
	while !place_meeting(x,y + sign(vsp), obj_wall)
		{
		y+=sign(vsp)
		}
	vsp = 0		
}
// COLISAO VERTICAL COM A CAIXA
if place_meeting(x,y + vsp, obj_caixa)
{
	while !place_meeting(x,y + sign(vsp), obj_caixa)
		{
		y+=sign(vsp)
		}
	vsp = 0		
}


y+= vsp
#endregion
#region pistola 
if (pose_gun == 0) {
    var faca_proxima = instance_nearest(x, y, obj_pistola);
    if (faca_proxima != noone) {
        var dist = point_distance(x, y, faca_proxima.x, faca_proxima.y);
        if (dist <= 40 && keyboard_check_pressed(ord("E"))) {  // raio de 16 para facilitar
            pose_gun = 1;
            pistola = 1;
            faca_proxima.equipada = true;  // marca essa faca como equipada
            // Opcional: você pode destruir a faca se quiser que desapareça ao pegar
            // instance_destroy(faca_proxima);
        }
    }
}

#endregion
#region faca 
if (pose_gun == 0) {
    var faca_proxima = instance_nearest(x, y, obj_faca);
    if (faca_proxima != noone) {
        var dist = point_distance(x, y, faca_proxima.x, faca_proxima.y);
        if (dist <=40 && keyboard_check_pressed(ord("E"))) {  // raio de 16 para facilitar
            pose_gun = 1;
            faca = 1;
            faca_proxima.equipada = true;  // marca essa faca como equipada
            // Opcional: você pode destruir a faca se quiser que desapareça ao pegar
            // instance_destroy(faca_proxima);
        }
    }
}




#endregion
#region shotgun
if (pose_gun == 0) {
    var faca_proxima = instance_nearest(x, y, obj_shotgun);
    if (faca_proxima != noone) {
        var dist = point_distance(x, y, faca_proxima.x, faca_proxima.y);
        if (dist <=40 && keyboard_check_pressed(ord("E"))) {  // raio de 16 para facilitar
            pose_gun = 1;
            shotgun = 1;
            faca_proxima.equipada = true;  // marca essa faca como equipada
            // Opcional: você pode destruir a faca se quiser que desapareça ao pegar
            // instance_destroy(faca_proxima);
        }
    }
}




#endregion
#region metralhadora
if (pose_gun == 0) {
    var faca_proxima = instance_nearest(x, y, obj_metralhadora);
    if (faca_proxima != noone) {
        var dist = point_distance(x, y, faca_proxima.x, faca_proxima.y);
        if (dist <=40 && keyboard_check_pressed(ord("E"))) {  // raio de 16 para facilitar
            pose_gun = 1;
            metralhadora = 1;
            faca_proxima.equipada = true;  // marca essa faca como equipada
            // Opcional: você pode destruir a faca se quiser que desapareça ao pegar
            // instance_destroy(faca_proxima);
        }
    }
}




#endregion
#region colisao da caixa






#endregion
#region apelou, perdeu!

if obj_player_info.vida <=0
{
show_message("PERDEU, VACILÃO!")
game_end()
}

#endregion

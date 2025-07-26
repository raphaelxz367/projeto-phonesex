#region seguir


var amplitude = 0;
var velocidad = 0;

if (instance_exists(obj_player)) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    // Só segue se estiver dentro do range
    if (dist <= distancia_seguir) {
        var dir = point_direction(x, y, obj_player.x, obj_player.y);

        // Desvia dos obstáculos enquanto tenta seguir o player
        mp_potential_step(obj_player.x, obj_player.y, velocidade, false);

        // Animação por oscilação
        #region animação por código
        if (congelado == 0) {
            amplitude = 3;
            velocidad = 0.02;
        } else {
            amplitude = 0;
            velocidad = 0;
        }
        image_angle = amplitude * sin(velocidad * current_time);
        #endregion

        // Movimento com colisão real
        if (dist > 16) {
            move_contact_solid(dir, velocidade);
        }

        // Invocar cajado se estiver perto o suficiente
        if (dist < distancia_invocar && !cajado_criado) {
            instance_create_layer(x, y, "Instances", obj_cajado_do_mago_de_sol);
            cajado_criado = true;
        }
    }
}

#endregion
#region cajado
// Distância para ativar o cajado
var distancia_ativar = 340;

// Verifica se o jogador está por perto e o cajado ainda não foi criado
if (instance_exists(obj_player)) {
    if (distance_to_object(obj_player) < distancia_ativar && !instance_exists(obj_cajado_do_mago_de_sol)) {
        instance_create_layer(x, y, "Instances", obj_cajado_do_mago_de_sol);
    }
}
#endregion
#region contabilizando para a fase
if contabilizando =1 
{
	global.inimigo +=1
	contabilizando = 0
}
#endregion
#region // olhando para o player

if (obj_player.x > x) {
    image_xscale = 1; // Olha para a direita (sprite normal)
} else {
    image_xscale = -1; // Olha para a esquerda (sprite espelhada)
}

#endregion
#region // hitflash

alpha = lerp(alpha,0,0.1)

#endregion
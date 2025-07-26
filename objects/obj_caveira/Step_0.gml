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

if distance_to_object(obj_player) <=200 && criou = 0
{
// Evento Step

if (!invocando) {
    // Quando decidir atacar (pode ser por distância ou tempo)
    if (distance_to_object(obj_player) < 200) {
        invocando = true;
        target_x = obj_player.x;
        target_y = obj_player.y;

        // Calcula direção para as mãos
        dx = target_x - x;
        dy = target_y - y;
        dist = point_distance(x, y, target_x, target_y);
        dir_x = dx / dist;
        dir_y = dy / dist;

        contador_maos = 0;
        tempo_proxima_mao = 0;
    }
}

if (invocando) {
    tempo_proxima_mao -= 1;

    if (tempo_proxima_mao <= 0 && contador_maos < qtd_maos) {
        var spawn_x = x + dir_x * espaco_mao * contador_maos;
        var spawn_y = y + dir_y * espaco_mao * contador_maos;

        instance_create_layer(spawn_x, spawn_y, "Instances", obj_mao_caveira);

        contador_maos += 1;
        tempo_proxima_mao = 5; // Delay entre cada mão
    }

    if (contador_maos >= qtd_maos) {
        invocando = false; // Fim da invocação
    }
}

}
#endregion
#region // hitflash

alpha = lerp(alpha,0,0.1)

#endregion
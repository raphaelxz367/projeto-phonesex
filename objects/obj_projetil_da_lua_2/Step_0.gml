// Se o inimigo chefe ainda existir
if (instance_exists(obj_mago_de_lua)) {
    // Incrementa o ângulo de rotação
    angulo += 2; // pode ajustar a velocidade de rotação

    // Mantém o ângulo entre 0~360 (opcional)
    if (angulo >= 360) angulo -= 360;

    // Define o raio da órbita
    var raio = 64; // distância do chefe

    // Converte o ângulo pra radianos
    var rad = degtorad(angulo);

    // Calcula a nova posição com base no chefe
    x =obj_mago_de_lua.x + lengthdir_x(raio, angulo);
    y = obj_mago_de_lua.y + lengthdir_y(raio, angulo);
}
if !instance_exists(obj_mago_de_lua)
{
	instance_destroy()
}
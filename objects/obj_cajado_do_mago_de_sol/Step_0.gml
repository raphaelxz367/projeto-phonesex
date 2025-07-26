if instance_exists(obj_mago_de_sol){
contador++;
image_angle = point_direction(x,y,obj_player.x,obj_player.y)
x = obj_mago_de_sol.x
y = obj_mago_de_sol.y
if (contador >= tempo_para_disparo) {
    // Dispara projétil na direção do jogador
    if (instance_exists(obj_player)) {
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        var proj = instance_create_layer(x, y, "Instances_1", obj_projetil_de_sol);
        proj.direction = dir;
        proj.speed = 6;
    }

    instance_destroy(); // Destroi o cajado após o disparo
}
}
if !instance_exists(obj_mago_de_sol)
	{
	instance_destroy()
	}
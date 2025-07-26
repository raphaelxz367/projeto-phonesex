if instance_exists(obj_mago_de_lua){
tempo_para_disparo -=1
tempo_para_disparo2 -=10

image_angle = point_direction(x,y,obj_player.x,obj_player.y)
x = obj_mago_de_lua.x
y = obj_mago_de_lua.y
if (tempo_para_disparo <=0) && criado = 0{
    // Dispara projétil na direção do jogador
    if (instance_exists(obj_player)) {
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        var proj = instance_create_layer(x, y - 30, "Instances_1", obj_projetil_da_lua);
		var proj1 = instance_create_layer(x, y, "Instances_1", obj_projetil_da_lua);
		var proj2 = instance_create_layer(x, y + 30, "Instances_1", obj_projetil_da_lua);
		criado = 1
    }
if (tempo_para_disparo2 <=0) && criado2 = 0{
    // Dispara projétil na direção do jogador
    if (instance_exists(obj_player)) {
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        var proj = instance_create_layer(x, y - 30, "Instances_1", obj_projetil_da_lua_2);
		var proj1 = instance_create_layer(x, y, "Instances_1",	obj_projetil_da_lua_2);
		var proj2 = instance_create_layer(x, y + 30, "Instances_1", obj_projetil_da_lua_2);
		criado = 1
    }
	if criado2 = 1&& criado1 = 1
	{
	criado2 = 1
	criado = 0
	tempo_para_disparo = 240; 
	tempo_para_disparo2 = 520
		}
    instance_destroy(); // Destroi o cajado após o disparo
		}
	}
}
if !instance_exists(obj_mago_de_lua)
	{
	instance_destroy()
	}
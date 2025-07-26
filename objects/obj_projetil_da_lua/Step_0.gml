move_towards_point(obj_player.x,obj_player.y, 6)
image_angle = point_direction(x,y,obj_player.x,obj_player.y)

if !instance_exists(obj_mago_de_lua)
{
	instance_destroy()
}
if (surface_exists(luz))
{
	surface_set_target(luz)
	draw_set_alpha(0.90)
	draw_set_color(c_fuchsia)
	draw_rectangle(278,29,1005,615,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	gpu_set_blendmode(bm_subtract)
	draw_circle(obj_tocha.x,obj_tocha.y,100,0)
	draw_circle(obj_tocha.x,obj_tocha.y,100,0)
	draw_circle(obj_player.x,obj_player.y,50,0)
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	
	draw_surface(luz,0,0)
}
else{
	luz = surface_create(room_width,room_height)
}
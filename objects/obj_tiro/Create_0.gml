move_towards_point(mouse_x,mouse_y,9)
audio_play_sound(tiro,1,0)
if obj_player.shotgun = 1{
// Opcional: destrói se sair da tela
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

}
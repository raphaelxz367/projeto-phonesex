draw_set_font(Font1)
draw_text(x,y,vida)
draw_text(x,y +15,moedas)
if obj_player.pistola = 1
{
draw_text(x,y +30,obj_pistola.balas)
}
if obj_player.shotgun = 1
{
draw_text(x,y +30,obj_shotgun.balas)
}
if obj_player.metralhadora = 1
{
draw_text(x,y +30,obj_metralhadora.balas)
}
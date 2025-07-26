if num = 0 // NADA
{
instance_destroy()
}
if num = 1 // MOEDAS
{
instance_create_layer(x,y,"Instances_1",obj_moeda)	
instance_destroy()
}
if num = 2 // SACO DE MOEDAS
{
instance_create_layer(x,y,"Instances_1",obj_moeda_saco)	
instance_destroy()
}
vida -=1
alpha = 1
instance_destroy(other)

if vida <=0{
global.inimigo -=1
instance_destroy()	
}
jogar = 0 
equipada = false;  // só a faca equipada segue o jogador e ataca
ativa = false;     // controla se a faca pode atacar ou não
atirou = 0
timer = 6
if (instance_number(object_index) > 1) {
    instance_destroy();
}
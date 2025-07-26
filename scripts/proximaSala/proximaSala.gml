function proximaSala() {
    if (global.indice_sala < 5) {
        var sala = global.salas_rodadas[global.indice_sala];
        global.indice_sala++;
        room_goto(sala);
    } else {
        // Vai pro boss
        if (global.indice_boss < array_length(global.salas_boss)) {
            var boss = global.salas_boss[global.indice_boss];
            global.indice_boss++;
            global.fase_atual++;
            gerar_fase(); // Gera novas 5 salas
            room_goto(boss);
        } else {
            show_message("Fim de jogo!");
        }
    }
}

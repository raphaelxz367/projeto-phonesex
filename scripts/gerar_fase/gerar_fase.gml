function gerar_fase() {
    var originais = global.salas_normais;
    var temp = array_create(array_length(originais));

    for (var i = 0; i < array_length(originais); i++) {
        temp[i] = originais[i];
    }

    // Fisher-Yates shuffle
    for (var i = array_length(temp) - 1; i > 0; i--) {
        var j = irandom(i);
        var aux = temp[i];
        temp[i] = temp[j];
        temp[j] = aux;
    }

    // Pega 5 salas da mistura
    global.salas_rodadas = array_create(5);
    for (var i = 0; i < 5; i++) {
        global.salas_rodadas[i] = temp[i];
    }

    global.indice_sala = 0;
}

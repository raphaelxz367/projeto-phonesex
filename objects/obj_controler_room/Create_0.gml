randomize(); // Garante aleatoriedade toda vez que roda o jogo

// Salas normais e boss definidas manualmente
global.salas_normais = [
Room1,
Room2,
Room3,
Room4,
Room5
];

global.salas_boss = [
Room6,
Room7
];

// Embaralhar todas as salas normais
function embaralhar_array(arr) {
    var n = array_length(arr);
    for (var i = n - 1; i > 0; i--) {
        var j = irandom(i);
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
    return arr;
}

global.salas_normais = embaralhar_array(global.salas_normais);

// Montar sequência final
global.salas_rodadas = [];

for (var i = 0; i < array_length(global.salas_normais); i += 5) {
    // Adiciona 5 salas aleatórias
    for (var j = 0; j < 5; j++) {
        if (i + j < array_length(global.salas_normais)) {
            array_push(global.salas_rodadas, global.salas_normais[i + j]);
        }
    }
    // Adiciona o boss correspondente (se tiver)
    var boss_index = i div 5;
    if (boss_index < array_length(global.salas_boss)) {
        array_push(global.salas_rodadas, global.salas_boss[boss_index]);
    }
}

// Índice da fase atual
global.indice_fase = 0;

/// @description Após o timer da vitória acabar.
// Após a partida finalizar e o timer do texto de vencedor acabar os pontos serão resetados.
// O estado global do jogo será resetado para não estar mais encerrado (já que agora não estão mais na tela de partida).
// O jogo então irá ir para a sala principal.
global.pontosplayerum = 0;
global.pontosplayerdois = 0;
global.jogoencerrado = 0;
room_goto(rm_principal);
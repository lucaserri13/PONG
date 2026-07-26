if (global.pontosplayerum = 3 or global.pontosplayerdois = 3)
{
	// A partida está oficialmente encerrada, e daqui 4 segundos o alarme toca para voltar pra tela principal.
	// Além disso, a bola é destruída para não haver outra rodada até a próxima partida.
	global.jogoencerrado = 1;
	instance_destroy(obj_bola);
	
}
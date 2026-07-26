/// @description Variáveis.
#region Variáveis.

looking = 0;
alarm[0] = 60;

#endregion

// Se o player 1 fez 3 pontos.
if (global.pontosplayerum = 3)
{
	// Audio alto exclusivo pro player 1 toca.
	audio_play_sound(snd_som_da_bola_01, 0, 0, 1);
}
	// Caso contrário, se o player 2 fizer 3 pontos.
	else if (global.pontosplayerdois = 3)
	{
		// Audio alto exclusivo pro player 2 toca.
		audio_play_sound(snd_som_da_bola_04, 0, 0, 1);
	}
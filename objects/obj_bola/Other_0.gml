/// @description Pontuação ao sair de campo.

#region Pontuação e Áudio.

// Se a bola saiu do lado direito da sala.
if (x > room_width)
{
	// O Player 1 (raquete da esquerda) faz um ponto.
	global.pontosplayerum++;
	
	// Se após fazer um ponto o Player 1 está com 1 ponto no total.
	if (global.pontosplayerum = 1)
	{
		// Um som baixo do Player 1 marcando ponto é tocado.
		audio_play_sound(snd_som_da_bola_03, 0, 0, 1);
	}
		// Caso contrário Se após fazer um ponto o Player 1 está com 2 pontos no total.
		else if (global.pontosplayerum = 2)
		{
			// Um som médio do Player 1 marcando ponto é tocado.
			audio_play_sound(snd_som_da_bola_02, 0, 0, 1);
		}
}
	// Caso contrário, se a bola saiu do lado esquerdo da sala.
	else
	{
		// O Player 2 (raquete da direita) faz um ponto.
		global.pontosplayerdois++;
		
		// Se após fazer um ponto o Player 2 está com 1 ponto no total.
		if (global.pontosplayerdois = 1)
	{
		// Um som baixo do Player 2 marcando ponto é tocado.
		audio_play_sound(snd_som_da_bola_06, 0, 0, 1);
	}
			// Caso contrário Se após fazer um ponto o Player 2 está com 2 pontos no total.
			else if (global.pontosplayerdois = 2)
			{
				// Um som médio do Player 2 marcando ponto é tocado.
				audio_play_sound(snd_som_da_bola_05, 0, 0, 1);
			}
	}

#endregion

// A sala reinicia.
room_restart()		


	
/// @description Mouse sair do botão.
// Ao mouse sair do botão, image_index muda para 0.
image_index = 0;

if (!sair)
{
	// Se não for o botão de "jogar".
	if (!jogar)
	{
		// A variável "inside" muda para 0.
		inside = 0;
		// Audio baixo exclusivo para esse botão toca.
		audio_play_sound(snd_som_da_bola_06, 0, 0, 0.8);
	}
		// Caso contrário, se for o botão de "jogar".
		else
		{
			// Audio baixo exclusivo para esse botão toca.
			audio_play_sound(snd_som_da_bola_03, 0, 0, 0.8);
		}
}
	else audio_play_sound(snd_som_da_bola_06, 0, 0, 0.8);
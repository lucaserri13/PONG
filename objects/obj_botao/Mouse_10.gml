/// @description Mouse entrar no botão.
// Ao mouse entrar no botão, image_index muda para 1.
image_index = 1;

if (!sair)
{
	// Se não for o botão de "jogar".
	if (!jogar)
	{
		// A variável "inside" muda para 1.
		// Audio médio exclusivo para esse botão toca.
		inside = 1;
		audio_play_sound(snd_som_da_bola_05, 0, 0, 0.8);
	}
		// Caso contrário, se for o botão de "jogar".
		else
		{
			// Audio médio exclusivo para esse botão toca.
			audio_play_sound(snd_som_da_bola_02, 0, 0, 0.8);
		}
}
	else audio_play_sound(snd_som_da_bola_03, 0, 0, 0.8);
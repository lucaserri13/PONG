/// @description Clicar no botão.
// Caso não seja o botão Jogar.

if (!sair)
{
	if (!jogar)
	{
		// Se for 1 jogador.
		//if (global.singleplayer)
		//{
		//	// O jogo mudará para 2 jogadores.
		//	global.singleplayer = 0;
		//}
		//	// Caso contrário mudará para 1 jogador.
		//	else
		//	{
		//		global.singleplayer = 1;
		//	}
		
		global.singleplayer = -global.singleplayer;
	
		// Audio alto exclusivo para esse botão toca.
		// O index da imagem muda para dar o efeito visual de clicar no botão.
		audio_play_sound(snd_som_da_bola_04, 0, 0, 0.8);
		image_index = 0;
	}
		// Caso contrário, se for o botão de "jogar".
		else
		{
			// Audio alto exclusivo para esse botão toca.
			// O jogo muda para a sala de partida.
			audio_play_sound(snd_som_da_bola_01, 0, 0, 0.8);
			room_goto(rm_partida);
		}
}
	else
	game_end()
	

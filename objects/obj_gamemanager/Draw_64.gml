/// @description Pontuação / Texto de Vitória.
// Caso a sala atual seja a sala de partida.
if (room = rm_partida)
{
	// Centralizando o texto.
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	// Se o player 1 (raquete esquerda) conseguir fazer 3 pontos.
	if (global.pontosplayerum = 3)
	{
		// Os pontos na parte superior esquerdo da tela (pertencentes ao player 1) ficarão verdes.
		// Um texto verde aparecerá no centro da tela dizendo que "Player 1 Ganhou!".
		draw_text_transformed_colour(410, 30, string(global.pontosplayerum), 3, 3, 0, c_green, c_green, c_green, c_green, 1);
		draw_text_transformed_colour(683, 384, "Player 1 Ganhou!", 4.5, 4.5, 0, c_green, c_green, c_green, c_green, 1);
		
	}
		// Caso contrário, se o player 1 ainda não fez 3 pontos.
		else
		{
			// Os pontos na parte superior esquerdo da tela (pertencentes ao player 1) ficarão vermelhos.
			draw_text_transformed_colour(410, 30, string(global.pontosplayerum), 3, 3, 0, c_red, c_red, c_red, c_red, 1);
		}
	
	// Se o player 2 (raquete direita) conseguir fazer 3 pontos.
	if (global.pontosplayerdois = 3)
	{
		// Os pontos na parte superior direito da tela (pertencentes ao player 2) ficarão verdes.
		// Um texto verde aparecerá no centro da tela dizendo que "Player 2 Ganhou!".
		draw_text_transformed_colour(956, 30, string(global.pontosplayerdois), 3, 3, 0, c_green, c_green, c_green, c_green, 1);
		draw_text_transformed_colour(683, 384, "Player 2 Ganhou!", 4.5, 4.5, 0, c_green, c_green, c_green, c_green, 1);
	}
		// Caso contrário, se o player 2 ainda não fez 3 pontos.
		else
		{
			// Os pontos na parte superior direito da tela (pertencentes ao player 2) ficarão vermelhos.
			draw_text_transformed_colour(956, 30, string(global.pontosplayerdois), 3, 3, 0, c_red, c_red, c_red, c_red, 1);
		}
}

if global.debug and alarm[1] != (-1)
draw_text_transformed_colour(1115, 723, "Debug: ON", 3, 3, 0, c_red, c_red, c_red, c_red, 1);
	else if (!global.debug) and alarm[1] != (-1)
	draw_text_transformed_colour(1115, 723, "Debug: OFF", 3, 3, 0, c_red, c_red, c_red, c_red, 1);
	
	// 1115 703

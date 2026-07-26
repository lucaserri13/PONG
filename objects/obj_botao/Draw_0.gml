/// @description Texto dos botões.
// Centralizando o texto e aplicando a fonte.
draw_self()
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_font);

// Caso o botão não seja o botão de jogar, texto para seleção de jogadores.

if (!sair)
{
	if (!jogar) 
	{
		// Se for 1 jogador.
		if (global.singleplayer)
		{
			// Texto indicando que o modo de jogo atual é "1 jogador".
			draw_text_transformed_colour(x, y, "1 Jogador", 3, 3, 0, c_red, c_red, c_red, c_red, 1);
		}
			// Caso contrário, se for 2 jogadores.
			else
			{
				// Texto indicando que o modo de jogo atual é "2 jogadores".
				draw_text_transformed_colour(x, y, "2 Jogadores", 2.5, 2.5, 0, c_red, c_red, c_red, c_red, 1);
			}
	}
		// Caso contrário, se o botão for o botão de jogar.
		else 		
		// Texto para "Jogar".
		draw_text_transformed_colour(x, y, "Jogar", 3, 3, 0, c_red, c_red, c_red, c_red, 1);
		
}	
	else 
	draw_text_transformed_colour(x, y, "Sair", 3, 3, 0, c_red, c_red, c_red, c_red, 1);

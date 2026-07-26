/// @description Olhar na Tela Principal/Partida.
#region Na Tela de Partida.

// Caso a sala atual seja a sala da partida.
if (room = rm_partida)
{
	// Caso uma instância da bola não exista OU caso os olhos não possam observar.
	if ((not instance_exists(obj_bola)) or looking = 0)
	{
		// Os olhos permaneceram estáticos e centralizados.
		x = 683;
		y = 200;
	}
		// Caso contrário, se existir uma instância E os olhos poderem observar.
		else
		{
			// Caso a bola esteja no MEIO da sala.
			if (obj_bola.x <= (room_width / 2) + 150 and obj_bola.x >= (room_width / 2) - 150)
			{
				// Os olhos irão olhar pro MEIO.
				x = 683;
			}
				// Caso contrário, se a bola estiver no campo DIREITO da sala.
				else if (obj_bola.x > room_width / 2)
				{
					// Os olhos irão olhar pra DIREITA.
					x = 683 + 30;
				}
					// Caso contrário, se a bola estiver no campo ESQUERDO da sala.
					else if (obj_bola.x < room_width / 2)
					{
						// Os olhos irão olhar pra ESQUERDA.
						x = 683 - 30;
					}
					
			// Caso a bola esteja pra CIMA do campo.
			if (obj_bola.y < (room_height/2) - 100)
			{
				// Os olhos irão olhar para CIMA (irão SUBIR).
				y = 200;
			}
				// Caso contrário, se a bola estiver pra BAIXO do campo.
				else
				{
					// Os olhos irão olhar para BAIXO (irão DESCER).
					y = 222;
				}
		}
}

#endregion

#region Na Tela Principal.

	// Caso contrário, se a sala atual for a sala do menu.
	else
	{
		// Se o mouse estiver pra CIMA da tela.	
		if (mouse_y < (room_height/2) - 100)
		{
			// Os olhos irão olhar para CIMA (irão SUBIR).
			y = 200;
		}
			// Caso contrário, se o mouse estiver pra BAIXO da tela.	
			else
			{
				// Os olhos irão olhar para BAIXO (irão DESCER).
				y = 222;
			}
		
		// Caso o mouse esteja no MEIO da sala.
		if (mouse_x <= (room_width / 2) + 150 and mouse_x >= (room_width / 2) - 150)
		{
			// Os olhos irão olhar pro MEIO.
			x = 683;
		}
			// Caso contrário, se o mouse estiver no campo DIREITO da sala.
			else if (mouse_x > room_width / 2)
			{
				// Os olhos irão olhar pra DIREITA.
				x = 683 + 30;
			}
				// Caso contrário, se a bola estiver no campo ESQUERDO da sala.
				else if (mouse_x < room_width / 2)
				{
					// Os olhos irão olhar pra ESQUERDA.
					x = 683 - 30;
				}
	}
	
#endregion

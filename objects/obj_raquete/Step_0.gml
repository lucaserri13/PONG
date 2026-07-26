/// @description Controles da Raquete 1, 2 e IA.
// Velocidade máxima da raquete.
var _speed = 5;
// Limite que será usado para definir onde está o "chão" e o "teto" da sala.
var _roomlimit = 130;

#region Jogador Principal (Raquete Esquerda)

// Se for o jogador principal (jogador 1)
if (mainplayer)
{
	if (!global.debug) speed = 0
	// Se o "W" estiver sendo segurado (indo para CIMA).
	if (keyboard_check(ord("W")))
	{
		// Se o Y da raquete não for MENOR OU IGUAL ao limite da sala.
		//if not (y <= _roomlimit)
		{
			// O Y SUBTRAIRÁ do seu valor de acordo com o valor de "_speed"
			y -= _speed;
		}
	}
	// Caso contrário, se o "S" estiver sendo segurado (indo para BAIXO).
	else if (keyboard_check(ord("S")))
	{
		// Se o Y da raquete não for MAIOR OU IGUAL a altura máxima da sala - o limite da sala.
		//if not (y >= room_height - _roomlimit)
		{
			// O Y ADICIONARÁ ao seu valor de acordo com o valor de "_speed"
			y += _speed;
		}
	}
}

#endregion

#region Jogador Adversário (Raquete Direita)

	// Caso contrário, se não for o jogador principal.
	else
	{
		#region Jogador 2
		
		// Se o modo de jogo for 2 jogadores (Não é IA)
		if (!global.singleplayer)
		{
			// Se a setinha para CIMA estiver sendo segurada (indo para CIMA).
			if (keyboard_check(vk_up))
			{
				// Se o Y da raquete não for MENOR OU IGUAL ao limite da sala.
				if not (y <= _roomlimit)
				{
					// O Y SUBTRAIRÁ do seu valor de acordo com o valor de "_speed"
					y -= _speed;
				}
			}			
			// Caso contrário, se a setinha para BAIXO estiver sendo segurada (indo para BAIXO).
			else if (keyboard_check(vk_down))
			{
				// Se o Y da raquete não for MAIOR OU IGUAL a altura máxima da sala - o limite da sala.
				if not (y >= room_height - _roomlimit)
				{
					// O Y ADICIONARÁ ao seu valor de acordo com o valor de "_speed"
					y += _speed;
				}			
			}
		}
		
		#endregion
		
		#region IA.
		
			// Caso contrário, se o modo de jogo for 1 jogador (é IA).
			else
			{
				// Velocidade máxima da raquete da IA.
				_speed = 5;
				
				// Caso uma instância da bola exista.
				if (instance_exists(obj_bola))
				{

					#region Esquivando da bola.
					
					// Caso o Y da bola seja maior que o Y da raquete E o X da bola seja maior do que o X da raquete - 75.
					// Simplificando, caso a bola tenha ULTRAPASSADO a raquete da DIREITA e está em BAIXO dela.
					if (obj_bola.y > y and obj_bola.x > x)
					{
						// A velocidade vertical da raquete vira o valor NEGATIVO da velocidace vertical da bola.
						// Nesse caso, se a bola estiver indo para BAIXO em um valor de 4, a raquete irá ir para cima em um valor de -4.
						vspeed = -global.velverticalbola;
					}
						// Caso contrário, se o Y da bola for menor do que o Y da raquete E o X da bola seja maior do que o X da raquete - 75.
						// Simplificando, caso a bola tenha ULTRAPASSADO a raquete da DIREITA e está em CIMA dela.
						else if (obj_bola.y < y and obj_bola.x > x)
						{
							// A velocidade vertical da raquete vira o valor POSITIVO da velocidace vertical da bola.
							// Nesse caso, se a bola estiver indo para CIMA em um valor de -4, a raquete irá ir para cima em um valor de 4.
							vspeed = global.velverticalbola;
						}
						
					#endregion

					#region Seguindo a bola.
					
					// Caso a bola não esteja girando (está no intervalo de início da rodada).
					if (obj_bola.rotates = 0)
					{
						// O Y da raquete é resetada para deixar a raquete centralizada no seu campo.
						// A velocidade vertical da raquete também é resetada para impedir que a raquete permaneça em movimento quando não deve.
						y = ystart;
						vspeed = 0;
					}
						// Caso contrário, se a bola estiver girando (não está mais no intervalo, rodada iniciou).
						else
						{	
							// Caso a bola esteja indo para CIMA.
							if (obj_bola.goingup)
							{
								// A raquete começara a subtrair 0.2 do seu vspeed a cada frame (isso causa aceleração para CIMA).
								vspeed -= 0.20;
								
								// Caso o vspeed da raquete seja MENOR que a velocidade vertical da bola E seja MAIOR do que o valor NEGATIVO da sua velocidade máxima.
								// Em outras palavras, caso a velocidade da bola NÃO seja MENOR OU IGUAL ao valor NEGATIVO da velocidade máxima da raquete.
								if (vspeed < global.velverticalbola and vspeed > -_speed)
								{
									// A raquete terá seu vspeed acompanhar a velocidade vertical exata da bola.
									// Que nesse caso, será uma velocidade vertical NEGATIVA.
									vspeed = global.velverticalbola;
								}
									// Caso contrário, se o vspeed for MENOR OU IGUAL ao o valor NEGATIVO da sua velocidade máxima.
									// Em outras palavras, caso a velocidade da bola seja MENOR OU IGUAL ao valor NEGATIVO da velocidade máxima da raquete.
									else if (vspeed <= -_speed)
									{
										// O vspeed da raquete atingirá o valor NEGATIVO da sua velocidade máxima.
										// Logo não poderá subir mais rápido para CIMA.
										vspeed = -_speed;
									}
							}
								// Caso contrário, se a bola estiver indo para BAIXO.
								else if (obj_bola.goingdown)
								{
									// A raquete começara a adicionar 0.2 ao seu vspeed a cada frame (isso causa aceleração para BAIXO).
									vspeed += 0.20;
									
									// Caso o vspeed da raquete seja MAIOR que a velocidade vertical da bola E seja MENOR do que o valor POSITIVO da sua velocidade máxima.
									// Em outras palavras, caso a velocidade da bola NÃO seja MAIOR OU IGUAL ao valor POSITIVO da velocidade máxima da raquete.
									if (vspeed > global.velverticalbola and vspeed < _speed)
									{
										// A raquete terá seu vspeed acompanhar a velocidade vertical exata da bola.
										// Que nesse caso, será uma velocidade vertical POSITIVA.
										vspeed = global.velverticalbola;
									}
										// Caso contrário, se o vspeed for MAIOR OU IGUAL ao o valor POSITIVO da sua velocidade máxima.
										// Em outras palavras, caso a velocidade da bola seja MAIOR OU IGUAL ao valor POSITIVO da velocidade máxima da raquete.
										else if (vspeed >= _speed)
										{
											// O vspeed da raquete atingirá o valor POSITIVO da sua velocidade máxima.
											// Logo não poderá descer mais rápido para BAIXO.
											vspeed = _speed;
										}
								}
						}
					
					#endregion
					/*
					#region Não sai da sala (bate no chão/teto).
					
					// Caso a raquete bata no chão.
					if (y > room_height - _roomlimit) 
					{
						// Ela permanece no lugar e sua velocidade vertical é resetada.
						y = (room_height - _roomlimit);
						vspeed = 0;
					}
						// Caso contrário, se a raquete bater no teto.
						else if (y < _roomlimit)
						{
							// Ela permanece no lugar e sua velocidade vertical é resetada.
							y = _roomlimit;
							vspeed = 0;
						}
						
					#endregion
					*/
				}
					// Caso contrário, se não existir uma instância da bola.
					else
					{
						// O Y da raquete é resetada para deixar a raquete centralizada no seu campo.
						// A velocidade vertical da raquete também é resetada para impedir que a raquete permaneça em movimento quando não deve.
						y = ystart;
						vspeed = 0;
					}					
			}
			
		#endregion
	}
	
#endregion






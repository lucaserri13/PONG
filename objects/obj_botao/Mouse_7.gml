/// @description Soltar o botão do mouse.
// Caso não seja o botão de "jogar".

if (sair) exit

if (!jogar)
{
	// Caso o mouse esteja dentro do botão.
	if (inside)
	{
		// Ao soltar o botão do mouse, o image_index muda para 1.
		image_index = 1;
	}
		// Caso contrário, se o mouse estiver fora do botão.
		else
		{
			// Ao soltar o botão do mouse, o image_index muda para 0.
			image_index = 0;
		}
}
/// @description Variáveis e definindo botões.
// Não tem velocidade de animação para manter a imagem estática.
image_speed = 0;

// Se o botão não for o botão de jogar, sprite alternativa.
if (!jogar)
{
	sprite_index = spr_botao_02;
}
	// Caso contrário, se o botão for o botão de jogar, sprite principal.
	else
	{
		sprite_index = spr_botao;
	}

// A variável "inside" é criada com "0" como default.	
inside = 0;
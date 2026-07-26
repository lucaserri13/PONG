/// @description Movimentos da bola.
// Limite que será usado para definir onde está o "chão" e o "teto" da sala.
var _balllimit = 32;

#region Rotação.

// Se a bola poder girar.
if (rotates)
{
	// A bola irá girar de acordo com o valor que a variável "rotatespeed" for.
	image_angle += rotatespeed;
}
	// Caso contrário, se a bola não poder girar.
	else
	{
		// O Código acima (que permite a animação de girar) não será lido, logo não gira.
		// A bola somente não pode girar quando ela está no intervalo do inicio de uma rodada.
		// Logo a bola só pode estar estática, então ela não está indo pra baixo nem para cima.	
		goingdown = 0;
		goingup = 0;
	}

#endregion

#region Definir se a bola está subindo ou descendo.

// A velocidade vertical atual da bola será salva em uma variável global e será constantemente atualizada com cada step.
// Isso permite que outros objetos e instâncias possam ter accesso a informação do vspeed da bola.
global.velverticalbola = vspeed;

// Caso o valor da variável seja negativa (a bola está com vspeed negativo porque está indo para cima).
if (-global.velverticalbola)
{
	// A variável "goingdown" será 0.
	// A variável "goingup" será 1.
	goingdown = 0;
	goingup = 1;
}
	// Caso contrário, se o valor for positivo (a bola está com vspeed positivo porque está indo para baixo).
	else
	{
		// A variável "goingdown" será 1.
		// A variável "goingup" será 0.
		goingdown = 1;
		goingup = 0;
	}

#endregion

	

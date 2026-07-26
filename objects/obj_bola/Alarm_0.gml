/// @description Escolha de direção da bola pós-intervalo.
// Isso fará com que o jogo seja verdadeiramente randomizado.
randomise();

#region Variáveis.

// Após o intervalo acabar, a bola escolherá ir ou para a direita ou para a esquerda, no valor de "ballspeed".
//(ballspeed = direita)   (-ballspeed = esquerda)
var _ballx = choose(ballspeed, -ballspeed);

// Ela também irá escolherá ir ou para cima ou para baixo, também na velocidade de "ballspeed".
//(ballspeed = baixo)   (-ballspeed = cima)
var _bally = choose(ballspeed, -ballspeed);

// Após fazer suas escolhas, ela então aplicará em si o valor das escolhas salvas nas variáveis temporárias
// A velocidade horizontal e vertical terão seus valores definidos de acordo com suas variáveis pertencentes.
hspeed = _ballx;
vspeed = _bally;

// A bola pode girar agora, sinalizando o início da partida.
rotates = 1;

#endregion

#region Rotação / Direção

// Se a bola escolher ir para a direita.
if (_ballx = ballspeed)
{
	// Ela irá ter sua velocidade de rotação invertida (de positivo para negativo) para girar pra direita.
	// O motivo disso é porque ângulos no GameMaker são sentido anti-horário.
		/*
			direita = 0
			cima = 90
			esquerda = 180
			baixo = 270
			direita = 360
		*/
	// Logo subtrair do ângulo é fazê-lo girar para a direita enquanto adicionar ao ângulo gira pra esquerda.
	// E por isso o rotatespeed precisa ser invertido, porque quando a bola é criada ela vem com valor positivo.
	// Logo como o valor é criado positivo, eu preciso torná-lo negativo após a bola escolher ir pra direita.
	rotatespeed = -rotatespeed;
}

// Se a bola escolher ir para baixo.
if (_bally = ballspeed)
{
	// A variável "goingdown" tornará 1 para indicar que a bola está descendo.
	goingdown = 1;
}
	// Caso contrário, se a bola escolher ir para cima.
	else
	{
		// A variável "goingup" tornará 1 para indicar que a bola está subindo.
		goingup = 1;
	}
#endregion
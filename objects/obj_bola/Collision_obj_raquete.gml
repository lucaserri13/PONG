/// @description Quicar das raquetes.

#region Invertendo Velocidade Horizontal da Bola.
/*
// Caso a bola não esteja indo pra esquerda (não está com velocidade horizontal negativa).
if not (-hspeed)	
{
	// Ao acertar a raquete da direita, 0.4 será adicionado à velocidade horizontal POSITIVA da bola.
	hspeed += 0.4;
}
	// Caso ao contrário, se a bola estiver indo para a esquerda (esteja com velocidade horizontal negativa).
	else
	{
		// Ao acertar a raquete da esquerda, 0.4 será subtraido da velocidade horizontal NEGATIVA da bola.
		hspeed -= 0.4;
	}
*/
speed += speedinscrease
// Isso permitirá com que a bola quique nas raquetes, sinalizado pelo som "boing" logo após quicar.
audio_stop_sound(snd_boing)
audio_play_sound(snd_boing, 0, 0, 1, 0, random_range(0.9,1.1));

#endregion 

#region Invertendo Rotação da Bola.

// Se a bola estiver girando para a direita.
if (-rotatespeed)
{
	// Um valor é subtraido do rotatespeed negativo.
	rotatespeed--;
}
	// Caso contrário, se a bola esttiver girando para a esquerda.
	else
	{
		// Um valor é adicionado ao rotatespeed positivo.
		rotatespeed++;
	}
	
// Após a adição/subtração, o valor de rotatespeed é invertido.
// Isso permite com que a bola mude a direção na qual ela está girando após quicar da raquete.
rotatespeed = -rotatespeed;

#endregion

move_bounce_solid(true)



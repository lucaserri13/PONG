/// @description Quicar do chão/teto.

#region Quicar no "chão" e no "teto".

// Caso a bola não esteja indo para cima (não está com velocidade vertical negativa).
/*
if not (-vspeed)
{
	// Ao acertar o chão, 0.4 será adicionado à velocidade vertical POSITIVA da bola.
	vspeed += 0.4;		
}
	// Caso ao contrário, se a bola estiver indo para cima (esteja com velocidade vertical negativa).
	else
	{
		// Ao acertar o teto, 0.4 será subtraido da velocidade vertical NEGATIVA da bola.
		vspeed -= 0.4;		
	}
*/

speed += speedinscrease
// Isso permitirá com que a bola quique do chão/teto, sinalizado pelo som "boing" logo após quicar.
audio_stop_sound(snd_boing)
audio_play_sound(snd_boing, 0, 0, 1, 0, random_range(0.9,1.1));

#endregion

move_bounce_solid(true)
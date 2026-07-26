/// @description Fullscreen.
// Ao pressionar f11, se a tela não estiver em tela cheia.

if !global.debug exit

if (!window_get_fullscreen())
{
	// A tela ficará cheia.
	window_set_fullscreen(true);
}
	// Caso contrário, se a tela estiver em tela cheia
	else
	{
		// A tela sairá da tela cheia.
		window_set_fullscreen(false);
	}
		
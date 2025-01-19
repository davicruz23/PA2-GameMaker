// Se o timer de colisão for zero ou maior que 3 segundos, decrementa a vida
if (hit_timer <= 0) {
    vida -= 1;  // Decrementa a vida
    hit_timer = 60;  // Define o timer para 3 segundos (180 frames a 60 FPS)
	
	ScreenShake(5,50);
	audio_play_sound(audiodanousse,4,false)
    
    // Verifica se o player ainda tem vidas
    if (vida <= 0) {
        instance_create_layer(x, y - 20, layer, oPlayerDead);  // Cria o objeto morto
        if (instance_exists(oGun)) {
            with (oGun) {
                instance_destroy();  // Destrói a arma
            }
        }
        instance_destroy();  // Destrói o player
	
		global.pontoFinal = global.pontos;
		
    }
}

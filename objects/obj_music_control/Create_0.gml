// Verifica se a música já está tocando
if (!global.music_playing)
{
    // Toca a música de fundo em loop (repare que o '1' é o volume e 'true' significa loop)
    audio_play_music(musicFundo, 1);
    global.music_playing = true; // Marca que a música está tocando
}

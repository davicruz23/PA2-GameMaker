if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oTextColeta))
{
    // Cria o objeto oTextR3
    var text_instance = instance_create_layer(x + 50, y - 20, layer, oTextColeta);
    
    // Você pode definir o texto aqui, caso precise:
    text_instance.text = "Vamos fazer a coleta seletiva! \n Se posicione na frente da lixeira \n Pressione 1 para jogar objetos de metal \n 2 para jogar objetos de plástico \n 3 para organicos \n 4 para papel \n 5 para vidro";
    
    // Faz a câmera seguir o jogador
    with (oCamera)
    {
        follow = oPlayer;
    }
}

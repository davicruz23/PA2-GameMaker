if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oTextColeta))
{
    // Cria o objeto oTextR3
    var text_instance = instance_create_layer(x + 50, y - 20, layer, oTextColeta);
    
    // Você pode definir o texto aqui, caso precise:
    text_instance.text = "Vamos fazer a coleta seletiva! \n Pressione 1 para metal na lixeira amarela \n 2 para plástico na lixeira vermelha \n 3 para organicos na lixeira marrom \n 4 para papel na lixeira azul \n 5 para vidro na lixeira verde";
    
    // Faz a câmera seguir o jogador
    with (oCamera)
    {
        follow = oPlayer;
    }
}

if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oTextColetarLixo))
{
    // Cria o objeto oTextR3
    var text_instance = instance_create_layer(x + 20, y - 20, layer, oTextColetarLixo);
    
    // Você pode definir o texto aqui, caso precise:
    text_instance.text = "Ajude a limpar a cidade! \n Colete os lixos espalhados.";
    
    // Faz a câmera seguir o jogador
    with (oCamera)
    {
        follow = oPlayer;
    }
}

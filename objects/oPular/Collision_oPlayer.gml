if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oTextPular))
{
    // Cria o objeto oTextR3
    var text_instance = instance_create_layer(x + 20, y - 20, layer, oTextPular);
    
    // Você pode definir o texto aqui, caso precise:
    text_instance.text = "Use a tecla ESPAÇO para pular os obstáculos!";
    
    // Faz a câmera seguir o jogador
    with (oCamera)
    {
        follow = oPlayer;
    }
}

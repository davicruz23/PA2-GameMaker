if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oTextAndar))
{
    // Cria o objeto oTextR3
    var text_instance = instance_create_layer(x + 20, y - 20, layer, oTextAndar);
    
    // Você pode definir o texto aqui, caso precise:
    text_instance.text = "Utilize a tecla A para andar para esquerda! \n E a tecla D para andar para a direita.";
    
    // Faz a câmera seguir o jogador
    with (oCamera)
    {
        follow = oPlayer;
    }
}

if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oTextAtacar))
{
    // Cria o objeto oTextR3
    var text_instance = instance_create_layer(x + 20, y - 20, layer, oTextAtacar);
    
    // Você pode definir o texto aqui, caso precise:
    text_instance.text = "Cuidado com os germes!  \n Eles são perigosos e transmitem doenças! \n Use a TECLA ESQUERDA DO MOUSE \n para exterminar os germes \n com sua arma de sabão!";
    
    // Faz a câmera seguir o jogador
    with (oCamera)
    {
        follow = oPlayer;
    }
}

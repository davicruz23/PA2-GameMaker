if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oText))
{
    // Cria o objeto oTextR3
    var text_instance = instance_create_layer(x + 200, y - 20, layer, oText);
    
    // Você pode definir o texto aqui, caso precise:
    text_instance.text =  "Na cidade de LIMPONÓPOLIS, tudo era limpo e brilhante. \n Mas o lixo espalhado trouxe os terríveis, \n GERMINATORS!\n Germes que adoram sujeira! \n Agora, a cidade está em perigo:\nplantas estão morrendo, animais fugiram, e ninguém\n consegue passear pelas ruas. \n É aí que você entra! \n Com sua poderosa ARMA DE SABÃO, \n elimine os Germinators e recolha o lixo para \n colocá-lo nas lixeiras certas para RECICLAR.";
    
    // Faz a câmera seguir o jogador
    with (oCamera)
    {
        follow = oPlayer;
    }
}

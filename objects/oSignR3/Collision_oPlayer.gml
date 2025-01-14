if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 64) && !instance_exists(oTextR3))
{
    // Cria o objeto oTextR3
    var text_instance = instance_create_layer(x + 20, y - 20, layer, oTextR3);
    
    // Você pode definir o texto aqui, caso precise:
    text_instance.text = "Bem vindo a fase 2! \n faça a coleta seletiva e limpe os monstros! \n vamos lá!";
    
    // Faz a câmera seguir o jogador
    with (oCamera)
    {
        follow = oPlayer;
    }
}

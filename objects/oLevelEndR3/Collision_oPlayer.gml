// Evento de colisão do objeto oLevelAnd com oPlayer

// Verifique se o jogador tem o controle
if (global.hascontrol)
{
    global.hascontrol = false;  // Desabilita o controle

    // Faz a transição para a sala rTwo
    room_goto(rTwo);
}

// Transição suave para o menu centralizado
menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control)
{
    // Navegação para cima (subir na lista)
    if (keyboard_check_pressed(vk_up))
    {
        menu_cursor--;
        if (menu_cursor < 0) menu_cursor = menu_items - 1; // Ciclo reverso
    }

    // Navegação para baixo (descer na lista)
    if (keyboard_check_pressed(vk_down))
    {
        menu_cursor++;
        if (menu_cursor >= menu_items) menu_cursor = 0; // Ciclo para cima
    }

    // Seleção do item com Enter
    if (keyboard_check_pressed(vk_enter))
    {
        menu_x_target = gui_width + 200; // Define o ponto de destino
        menu_committed = menu_cursor; // Salva a seleção
        ScreenShake(4, 30); // Efeito de tremor na tela
        menu_control = false; // Desabilita o controle do menu enquanto a transição ocorre
    }
}

// Verifica se o menu foi selecionado e executa a ação
if (menu_x > gui_width + 150 && menu_committed != -1)
{
    switch (menu_committed)
    {
        case 2: default: SlideTransition(TRANS_MODE.NEXT); break; // Novo Jogo
        case 0: game_end(); break; // Sair
    }
}

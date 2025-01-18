// Tamanho da tela (GUI)
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

// Posição inicial do menu (centralizado na tela)
menu_x = gui_width / 2;
menu_y = gui_height / 2;

// Define a posição do menu de destino (para o movimento de transição)
menu_x_target = menu_x;
menu_speed = 25;
menu_font = ft_interface;
menu_itemheight = font_get_size(ft_interface);
menu_committed = -1;
menu_control = true;

// Adiciona itens do menu
menu[2] = "Novo Jogo";
menu[1] = "Continuar";
menu[0] = "Sair";

// Total de itens no menu
menu_items = array_length_1d(menu);
menu_cursor = 2;  // Começa com o item "Novo Jogo"



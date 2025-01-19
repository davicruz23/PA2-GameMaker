global.pontos = 0

// Desenha um fundo semi-transparente para o Game Over
draw_set_alpha(0.7);
draw_rectangle_color(0, 0, display_get_width(), display_get_height(), c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

// Desenha o texto "Game Over"
draw_set_font(ft_interface);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(display_get_width() / 2, display_get_height() / 2 - 50, "FIM DE JOGO, VOCÊ CONCLUIU TODAS AS FASES!");

// Mostra a pontuação (se você estiver salvando em uma variável global)
draw_text(display_get_width() / 2, display_get_height() / 2, "pontos: " + string(global.pontos));

// Adiciona a mensagem para reiniciar
draw_text(display_get_width() / 2, display_get_height() / 2 + 50, "Pressione R para reiniciar");

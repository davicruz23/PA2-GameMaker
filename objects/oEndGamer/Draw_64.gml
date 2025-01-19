// Configura o alinhamento do texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Desenha o fundo semi-transparente cobrindo toda a tela
draw_set_alpha(0.7); // Define a transparência
draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
draw_set_alpha(1); // Restaura a opacidade

// Texto "GAME OVER"
draw_set_font(ft_interface); // Substitua pelo nome da sua fonte, se necessário
draw_set_color(c_white); // Cor do texto
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 50, "FIM DE JOGO, VOCÊ CONCLUIU TODAS AS FASES!");

// Pontuação do jogador
if (variable_global_exists("pontoFinal")) // Verifica se a variável de pontuação existe
{
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Pontuação: " + string(global.pontoFinal));
}
else
{
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Pontuação: 0");
}

// Instruções para reiniciar
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 + 50, "Pressione R para reiniciar");

// Opcional: Instruções para sair do jogo
draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 + 100, "Pressione ESC para sair");

if (keyboard_check_pressed(vk_escape)) {
    game_end();  // Chama a função para encerrar o jogo
}

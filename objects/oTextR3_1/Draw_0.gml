// Evento Draw de oTextR3
var halfw = w * 0.5;  // Metade da largura
var border = 5;  // Margem

// Desenha o fundo arredondado do texto
draw_set_alpha(0.5);  // Transparência para o fundo
draw_roundrect_ext(x - halfw - border, y - h - (border * 2), x + halfw + border, y, 15, 15, false);  // Retângulo arredondado
draw_set_alpha(1);  // Retorna a transparência para 1 (opaco)

// Desenha o texto
DrawSetText(c_black, ft_interface, fa_center, fa_top);  // Configura o estilo do texto
draw_text(x, y - h - border, text_current);  // Desenha o texto atual

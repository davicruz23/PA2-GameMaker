// No evento de desenho do objeto
var halfw = w * 0.5;
var border = 5;

// Desenhando o retângulo arredondado
draw_set_alpha(0.5);
draw_roundrect_ext(x - halfw - border, y - h - (border * 2), x + halfw + border, y, 15, 15, false);
draw_sprite(sMarker, 0, x, y);
draw_set_alpha(1);

// Chama a função DrawSetText como uma função normal
DrawSetText(c_black, ft_interface, fa_center, fa_top);

// Desenha o texto
draw_text(x, y - h - border, text_current);

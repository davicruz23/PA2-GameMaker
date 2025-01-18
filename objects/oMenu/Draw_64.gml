draw_set_font(ft_interface);
draw_set_halign(fa_center); // Centraliza horizontalmente
draw_set_valign(fa_middle); // Centraliza verticalmente

for (var i = 0; i < menu_items; i++)
{
    var offset = 2;
    var txt = menu[i];
    if (menu_cursor == i)
    {
        txt = string_insert("> ", txt, 0);
        var col = c_white; // Cor para o item selecionado
    }
    else
    {
        var col = c_gray; // Cor para os itens não selecionados
    }
    // Posição do item do menu
    var xx = menu_x;
    var yy = menu_y - (menu_itemheight * (i * 1.5));

    // Desenho das sombras para o efeito
    draw_set_color(c_black);
    draw_text(xx - offset, yy, txt);
    draw_text(xx + offset, yy, txt);
    draw_text(xx, yy - offset, txt);
    draw_text(xx, yy + offset, txt);

    // Cor do texto
    draw_set_color(col);
    draw_text(xx, yy, txt);
}

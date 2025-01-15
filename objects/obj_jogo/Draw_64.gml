draw_set_font(ft_interface);  // Certifique-se de usar a mesma fonte
draw_set_color(c_white);  // Defina a cor que você quer para o texto

// Desenhando a pontuação ou outras informações
draw_text(90, 50, "Metal " + string(global.aluminum));
draw_text(120, 70, "Plástico " + string(global.plastic));
draw_text(120, 90, "Orgânico " + string(global.fruit));
draw_text(90, 110, "Papel " + string(global.paper));
draw_text(90, 130, "Vidro " + string(global.vidro));
draw_text(130, 160, "Pontuação " + string(global.pontos));

// Verifica se a instância do jogador ainda existe antes de desenhar as vidas
if (instance_exists(oPlayer)) {
    draw_text(100, 200, "Vidas: " + string(oPlayer.vida));  // Desenha as vidas se o jogador existir
} else {
    draw_text(100, 200, "Vidas: 0");  // Alternativa para quando o jogador não existir
}

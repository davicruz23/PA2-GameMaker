// Define a fonte e a cor
draw_set_font(ft_interface);  // Certifique-se de usar a mesma fonte
draw_set_color(c_black);  // Defina a cor que você quer para o texto

// Configura o alinhamento horizontal para esquerda
draw_set_halign(fa_left);  // Alinha à esquerda
draw_set_valign(fa_top);   // Alinha ao topo

// Verifica se a instância do jogador ainda existe antes de desenhar as vidas
if (instance_exists(oPlayer)) {
    draw_text(100, 200, "Vidas: " + string(oPlayer.vida));  // Desenha as vidas se o jogador existir
} else {
    draw_text(100, 200, "Vidas: 0");  // Alternativa para quando o jogador não existir
}
// Coordenadas fixas da tela (exemplo)
var x_left = 100;   // Lado esquerdo
var x_right = 300; // Lado direito
var y_start = 50;  // Posição inicial no eixo Y
var y_step = 20;   // Espaçamento entre linhas

// Desenhando as informações de lixo alinhadas à esquerda
draw_text(x_left, y_start, "Metal: " + string(global.aluminum));
draw_text(x_left, y_start + y_step, "Plástico: " + string(global.plastic));
draw_text(x_left, y_start + 2 * y_step, "Orgânico: " + string(global.fruit));
draw_text(x_left, y_start + 3 * y_step, "Papel: " + string(global.paper));
draw_text(x_left, y_start + 4 * y_step, "Vidro: " + string(global.vidro));

// Desenhando a pontuação e as vidas no lado direito
draw_text(x_right, y_start, "Pontuação: " + string(global.pontos));
draw_text(x_right, y_start + y_step, "Vidas: " + string(oPlayer.vida));

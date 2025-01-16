// Define a fonte e a cor
draw_set_font(ft_interface);  // Certifique-se de usar a mesma fonte
draw_set_color(c_black);  // Define a cor que você quer para o texto

// Configura o alinhamento horizontal para esquerda
draw_set_halign(fa_left);  // Alinha à esquerda
draw_set_valign(fa_top);   // Alinha ao topo

// Coordenadas fixas da tela
var x_start = 50;  // Posição inicial no eixo X
var y_fixed = 50;  // Posição fixa no eixo Y

// String de informações concatenadas
var info = "    Metal: " + string(global.aluminum) + " | " +
           "Plástico: " + string(global.plastic) + " | " +
           "Orgânico: " + string(global.fruit) + " | " +
           "Papel: " + string(global.paper) + " | " +
           "Vidro: " + string(global.vidro);

// Adiciona mais espaçamento antes de "Pontuação" e "Vidas"
info += "                    | Pontuação: " + string(global.pontos); // Mais espaços antes de "Pontuação"

if (instance_exists(oPlayer)) {
    info += "      | Vidas: " + string(oPlayer.vida);  // Mais espaços antes de "Vidas"
} else {
    info += "      | Vidas: 0";  // Mais espaços antes de "Vidas" quando o jogador não existe
}

// Desenha todas as informações em uma única linha
draw_text(x_start, y_fixed, info);

// Obtenha as posições da câmera para posicionamento relativo ao mapa
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Posição fixa no mapa
var map_x = 780;
var map_y = 420;

// Mensagem de texto
var message = "Clique aqui com o botão direito do mouse!!";

// Definir fonte antes de medir
draw_set_font(ft_interface);

// Medir largura e altura do texto
var text_width = string_width(message);
var text_height = string_height(message);


// Desenhar o texto na mesma posição
draw_set_alpha(1);  // Restaura a opacidade
draw_set_color(c_white);  // Define a cor do texto
draw_text(map_x - cam_x, map_y - cam_y, message);


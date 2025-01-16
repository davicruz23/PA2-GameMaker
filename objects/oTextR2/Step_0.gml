// Evento Step de oTextR3
latters += spd;  // Aumenta o número de letras mostradas
text_current = string_copy(text, 1, floor(latters));  // Cria o texto atual até o número de letras mostradas

w = string_width(text_current);  // Largura do texto

if (h == 0) h = string_height(text);  // Calcula a altura do texto

// Quando o texto estiver completo e o jogador pressionar qualquer tecla, destrua o objeto
if (latters >= length && keyboard_check_pressed(vk_anykey))
{
    instance_destroy();  // Destrói o objeto
    with (oCamera) follow = oPlayer;  // A câmera segue o jogador
}

// Evento Create de oTextR3
spd = 1.0;  // Velocidade para mostrar as letras
text ="Vamos fazer a coleta seletiva! \n Se posicione na frente da lixeira \n Pressione 1 para jogar objetos de metal \n 2 para jogar objetos de plástico \n 3 para organicos \n 4 para papel \n 5 para vidro";
latters = 0;  // Contador de letras mostradas
length = string_length(text);  // Comprimento do texto
text_current = "";  // Texto atual mostrado
w = 0;  // Largura do texto
h = 0;  // Altura do texto
border = 10;  // Margem do texto


var tolerance = 20;

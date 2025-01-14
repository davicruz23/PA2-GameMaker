// Evento Create de oTextR3
spd = 1.0;  // Velocidade para mostrar as letras
text = "Vamos fazer a coleta seletiva! \n Pressione 1 para metal na lixeira amarela \n 2 para plástico na lixeira vermelha \n 3 para organicos na lixeira marrom \n 4 para papel na lixeira azul \n 5 para vidro na lixeira verde"; // O texto
latters = 0;  // Contador de letras mostradas
length = string_length(text);  // Comprimento do texto
text_current = "";  // Texto atual mostrado
w = 0;  // Largura do texto
h = 0;  // Altura do texto
border = 10;  // Margem do texto


var tolerance = 20;

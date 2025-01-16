// Evento Create de oTextR3
spd = 1.0;  // Velocidade para mostrar as letras
text =  "Na cidade de LIMPONÓPOLIS, tudo era limpo e brilhante. \n Mas o lixo espalhado trouxe os terríveis, \n GERMINATORS!\n Germes que adoram sujeira! \n Agora, a cidade está em perigo:\nplantas estão morrendo, animais fugiram, e ninguém\n consegue passear pelas ruas. \n É aí que você entra! \n Com sua poderosa ARMA DE SABÃO, \n elimine os Germinators e recolha o lixo para \n colocá-lo nas lixeiras certas para RECICLAR.";
latters = 0;  // Contador de letras mostradas
length = string_length(text);  // Comprimento do texto
text_current = "";  // Texto atual mostrado
w = 0;  // Largura do texto
h = 0;  // Altura do texto
border = 10;  // Margem do texto
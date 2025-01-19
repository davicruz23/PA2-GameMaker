// Marque o objeto como persistente
persistent = true;

// Inicialize as variáveis globais se elas não existirem
if (!variable_global_exists("aluminum")) { global.aluminum = 0; }
if (!variable_global_exists("plastic")) { global.plastic = 0; }
if (!variable_global_exists("fruit")) { global.fruit = 0; }
if (!variable_global_exists("paper")) { global.paper = 0; }
if (!variable_global_exists("vidro")) { global.vidro = 0; }
if (!variable_global_exists("pontos")) { global.pontos = 0; }
if (!variable_global_exists("pontoFinal")) {global.pontoFinal = 0;}
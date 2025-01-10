// Verifique se o botão direito do mouse foi pressionado e se o mouse está sobre o objeto Osign
if (mouse_check_button_pressed(mb_right) && point_in_circle(oPlayer.x,oPlayer.y,x,y,64) ) {
    // Encontre o objeto Oseta e destrua-o
    var oseta = instance_find(oSeta, 0);  // Encontra a primeira instância do objeto Oseta
    if (oseta != noone) {
        instance_destroy(oseta);  // Destrói o objeto Oseta encontrado
    }
}

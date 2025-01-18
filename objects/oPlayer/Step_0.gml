// player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);  // Troquei para keyboard_check para disparar sempre que pressionar a tecla

// calcular movimento
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

// Verifica se o jogador está tocando o chão e pressionou pular
if(place_meeting(x, y + 1, oWall) && key_jump)
{
    vsp = -7;
    audio_play_sound(jump, 1, false); // Toca o som de pulo
}

// Verifica se o jogador ainda pode pular
if (key_jump && jumps > 0)
{
    vsp = -7; // Define a velocidade vertical para o pulo
    jumps -= 1; // Reduz a quantidade de pulos disponíveis
    audio_play_sound(jump, 1, false); // Toca o som de pulo novamente
}

// colisao horizontal
if(place_meeting(x + hsp, y, oWall))
{
    while(!place_meeting(x + sign(hsp), y, oWall))
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}

x = x + hsp;

// colisao vertical
if(place_meeting(x, y + vsp, oWall))
{
    while(!place_meeting(x, y + sign(vsp), oWall))
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}

y = y + vsp;

// animação
if(!place_meeting(x, y + 1, oWall))
{
    sprite_index = sPlayerA;
    image_speed = 0;
    if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
    image_speed = 1;
    if (hsp == 0)
    {
        sprite_index = sPlayer;
    }
    else
    {
        sprite_index = sPlayerR;
    }
}

if (hsp != 0) image_xscale = sign(hsp);

if (hit_timer > 0) {
    hit_timer -= 1;
}

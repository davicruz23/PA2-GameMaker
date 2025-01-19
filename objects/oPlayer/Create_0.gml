hsp = 0;
vsp = 0;
grv = 0.3;
walksp =4;
global.hascontrol = true;
jumps = 2;

vida = 5;
hit_timer = 0;

if (!audio_is_playing(musicFundo)) {
    audio_play_sound(musicFundo, 1, true);
}

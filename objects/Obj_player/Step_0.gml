imputs()
checa_chao()
cria_portal()
ajusta_sprite()
movendo()
retorna_squesh()

if (keyboard_check_pressed(vk_space))
{
    audio_play_sound(snd_jump, 2, 0)
}
if(keyboard_check_pressed(ord("J")))
{
    audio_play_sound(Snd_portal,1,0)
    
}
if (place_meeting(x, y, Obj_transicao_level))
{
    controle = false;
    velh = 0;
}

//rodando o meu estado
estado()



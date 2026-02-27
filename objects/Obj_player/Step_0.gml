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
if(keyboard_check_pressed(ord("R")))
{
    audio_play_sound(Snd_portal,1,0)
    
}


//rodando o meu estado
estado()

// ==========================
// SUPORTE A PLATAFORMA MÓVEL (VERSÃO ESTÁVEL)
// ==========================

var plat = instance_place(x, y + 1, Obj_plataforma);

if (plat != noone && plat.colidivel)
{
    if (bbox_bottom <= plat.bbox_top + 2 && velv >= 0)
    {
        var mov_x = plat.x - plat.x_anterior;
        var mov_y = plat.y - plat.y_anterior;

        // -------- HORIZONTAL --------
        velh += mov_x;

        // -------- VERTICAL --------
        if (!place_meeting(x, y + mov_y, colisao))
        {
            y += mov_y;
        }
        else
        {
            velv = 0;
        }
    }
}
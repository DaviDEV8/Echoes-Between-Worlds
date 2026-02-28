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

// ==========================
// SUPORTE A PLATAFORMA MÓVEL (CORRIGIDO)
// ==========================

var plat = instance_place(x, y + 1, Obj_plataforma);

if (plat != noone && plat.colidivel)
{
    // se estiver caindo sobre ela
    if (velv >= 0 && bbox_bottom <= plat.bbox_top + 4)
    {
        // COLA no topo da plataforma
        y = plat.bbox_top - (bbox_bottom - y);
        velv = 0;

        var mov_x = plat.x - plat.x_anterior;
        var mov_y = plat.y - plat.y_anterior;

        // -------- HORIZONTAL --------
        if (!place_meeting(x + mov_x, y, colisao))
        {
            x += mov_x;
        }

        // -------- VERTICAL --------
        if (!place_meeting(x, y + mov_y, colisao))
        {
            y += mov_y;
        }
    }
}
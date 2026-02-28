// ANIMAÇÃO
if (ativo)
{
    scale = lerp(scale, 0.5, vel);
}
else
{
    scale = lerp(scale, 0, vel);

    if (scale <= 0.25)
    {
        instance_destroy();
    }
}

image_xscale = scale;
image_yscale = scale;


// ==========================
// INTERAÇÃO PORTAL ↔ PLATAFORMA
// ==========================

var plat = collision_rectangle(
    bbox_left,
    bbox_top,
    bbox_right,
    bbox_bottom,
    Obj_plataforma,
    false,
    true
);

// SE ESTÁ TOCANDO
if (plat != noone)
{
    if (!interagindo)
    {
        if (plat.estado != plat.estado_persistente)
        {
            if (plat.estado == plat.estado_invisivel)
                plat.estado = plat.estado_visivel;
            else
                plat.estado = plat.estado_invisivel;

            plat.estado();
        }

        plataforma_alvo = plat;
        interagindo = true;
    }
}
else
{
    // SE PAROU DE TOCAR
    if (interagindo && plataforma_alvo != noone)
    {
        if (plataforma_alvo.estado != plataforma_alvo.estado_persistente)
        {
            plataforma_alvo.estado = plataforma_alvo.estado_padrao;
            plataforma_alvo.estado();
        }

        plataforma_alvo = noone;
        interagindo = false;
    }
}
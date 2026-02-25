var dentro_portal = place_meeting(x, y, Obj_portal);

if (modo == "visivel")
{
    // objeto começa visível e some no portal
    if (dentro_portal)
        estado = estado_invisivel;
    else
        estado = estado_visivel;
}
else if (modo == "invisivel")
{
    // objeto começa invisível e aparece no portal
    if (dentro_portal)
        estado = estado_visivel;
    else
        estado = estado_invisivel;
}

estado();
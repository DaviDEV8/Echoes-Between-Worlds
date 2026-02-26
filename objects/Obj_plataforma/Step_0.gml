// =====================
// MOVIMENTO
// =====================

switch (Move)
{
    case "horizontal":
    
        x += vel * dir
        
        if (abs(x - origem_x) >= distancia)
        {
            dir *= -1
        }
        
    break
    
    
    case "vertical":
    
        y += vel * dir
        
        if (abs(y - origem_y) >= distancia)
        {
            dir *= -1
        }
        
    break
}


// =====================
// INTERAÇÃO COM PORTAL
// =====================

var dentro_portal = place_meeting(x, y, Obj_portal)

// persistente ignora portal
if (estado_padrao != estado_persistente)
{
    if (dentro_portal)
    {
        if (estado_padrao == estado_visivel)
            estado = estado_invisivel
        else
            estado = estado_visivel
    }
    else
    {
        estado = estado_padrao
    }
}


// executar estado
estado()
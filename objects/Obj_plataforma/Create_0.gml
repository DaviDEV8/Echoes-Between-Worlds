// movimento
origem_x = x
origem_y = y

x_anterior = x
y_anterior = y
dir = 1

// colisão
colidivel = true

// estados
estado = noone
estado_padrao = noone


estado_visivel = function()
{
    visible = true
    mask_index = sprite_index
    colidivel = true
}

estado_invisivel = function()
{
    visible = false
    mask_index = Spr_vazio
    colidivel = false
}

estado_persistente = function()
{
    visible = true
    mask_index = sprite_index
    colidivel = true
}


// definir estado inicial baseado no editor
switch (Estado)
{
    case "visivel":
        estado = estado_visivel
    break
    
    case "invisivel":
        estado = estado_invisivel
    break
    
    case "persistente":
        estado = estado_persistente
    break
}

estado_padrao = estado
// APLICA O ESTADO INICIAL
estado();
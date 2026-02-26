if (!instance_exists(portal))
{
    instance_destroy()
    exit
}

// seguir posição
x = portal.x
y = portal.y

// copiar escala
scale = portal.scale
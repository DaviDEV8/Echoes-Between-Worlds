// salvar posição antes de mover
x_anterior = x;
y_anterior = y;

// movimento
switch (Move)
{
    case "horizontal":
        x += vel * dir;
        if (abs(x - origem_x) >= distancia)
            dir *= -1;
    break;

    case "vertical":
        y += vel * dir;
        if (abs(y - origem_y) >= distancia)
            dir *= -1;
    break;
}


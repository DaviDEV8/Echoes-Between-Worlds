acao = function()
{
    switch (texto)
    {
        case "Jogar":
        {
            var t = instance_create_layer(0, 0, "Efeitos", Obj_transicao);
            t.destino = Rm_fase1;
        }
        break;
        
        case "Tutorial":
        {
            var t = instance_create_layer(0, 0, "Efeitos", Obj_transicao);
            t.destino = Rm_tutorial;
        }
        break;
        
        case "Sair":
        {
            game_end();
        }
        break;
    }
}









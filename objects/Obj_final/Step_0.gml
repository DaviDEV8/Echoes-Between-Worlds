if (ativo)
{
    if (keyboard_check_pressed(vk_enter))
    {
        ativo = false;
        var _transi = instance_create_layer(x,y,"Efeitos",Obj_transicao)
        _transi.destino = Rm_menu // coloque o nome real da sua sala de menu aqui
    }
}
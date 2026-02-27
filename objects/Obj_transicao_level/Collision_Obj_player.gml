if(!instance_exists(Obj_transicao))
{
     var _destino = destino1
     var _transi = instance_create_layer(x,y,"Efeitos" ,Obj_transicao)
    _transi.destino = _destino
}
if(!instance_exists(Obj_transicao))
{
     var _destino = destino1
    instance_create_layer(x,y,"Efeitos" ,Obj_transicao)
    with (Obj_transicao) {
    	destino = _destino
    }
}
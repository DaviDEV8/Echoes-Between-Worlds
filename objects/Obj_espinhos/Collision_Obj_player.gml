if(!alvo)
{
    audio_play_sound(Snd_morte,0,0)
    alvo = other.id
    other.morrendo()
    
    if(image_index >= image_number-1)
    {
        var _t = instance_create_layer(x,y,"Efeitos",Obj_transicao)
        _t.destino = room
    }
    
}







#region variaveis

inicia_efeito_squesh()

//iniciando variaveis
velv = 0
max_velv = 4 

velh = 0
max_velh = 2

var _tile = layer_tilemap_get_id("Chao")
colisao = [Obj_chao,Obj_caixa, _tile]

//variaveis do movimento
jump = false
right = false
left = false
portal = false

chao = false
grav = 0.2

//variaveis dos estados
estado = noone
dir = 1
#endregion

#region Imputs e movimento do player
//pegando os inputs do jogador
imputs =function()
{
    right = keyboard_check(ord("D"))
    left = keyboard_check(ord("A"))
    jump = keyboard_check(vk_space)
    portal = keyboard_check(ord("R"))
}

//checando se o player está no chão
checa_chao=function()
{
    chao = place_meeting(x,y + 1,colisao)
}

aplica_velocidade =function()
{
    //aplicando os inputs no velh
    velh = (right -left) * max_velh
    
    //aplicando a gravidade
    //se não estou tocando no chão eu aplico a gravidade no meu velv
    if(!chao)
    {
        velv+= grav
    }
    //caso contrario eu zero o meu velv
    else{
        velv = 0
        
        y = round(y)
        
        if(jump)
        {
            velv = -max_velv
        }
    }
    

}

movendo =function()
{
    //usando o move and colide horizontal
    move_and_collide(velh,0,colisao,4)
    
    //usando move and collide vertical
    move_and_collide(0,velv,colisao,4)
}

//ajustando a direção a qual o player esta olhando
ajusta_sprite =function()
{
    if(velh !=0)
    {
        dir = sign(velh)
    }
}


//criando o portal
cria_portal = function()
{
    //apertei o botão, cria o portal
    if (portal)
    {
        if (!instance_exists(Obj_portal))
        {
            instance_create_layer(x, y, layer, Obj_portal);
        }
    }
    else
    {
        if (instance_exists(Obj_portal))
        {
            var preso = place_meeting(x, y, Obj_verifica_colisao);
    
            if (!preso)
            {
                with (Obj_portal)
                {
                    ativo = false
                }
            }
        }
    }
}



#endregion

#region maquina de estados
//metodos dos estados

//mudando a sprite e zerando a animação
troca_sprite =function(_sprite = Spr_chao)
{
    if(sprite_index != _sprite)
    {
        sprite_index = _sprite
        //zerando a animação
        image_index =0
    }
}

estado_parado =function()
{
    troca_sprite(Spr_player_idle)
    
    //se eu apertar esquerda ou direita meu personagem troca o estado para movendo
    if(right xor left)
    {
        estado = estado_movendo
    }
    
    // se eu apertar o botão de pulo ele muda o estado para pulo
    if(jump)
    {
        estado = estado_pulo
        instance_create_depth(x,y,depth -1,Obj_part_pulo)
        efeito_squesh(.7,1.3)
        
    }
    
    if(!chao)
    {
        estado = estado_pulo
    }
    
}

estado_movendo =function()
{
    aplica_velocidade()
    troca_sprite(Spr_player_movendo)
    
    
    
    if(velh == 0)
    {
        estado = estado_parado
    }
}

estado_pulo =function()
{
    aplica_velocidade()
    // se eu estou subindo minha velv é negativa
    if(velv <0)
    {
        troca_sprite(Spr_player_pulando)
    }
    else { //se não´ela é 0 ou positiva
    	troca_sprite(Spr_player_caindo)
    }
    //se eu tocar no chão, vou para o estado parado
    if(chao)
    {
        estado = estado_parado
        instance_create_depth(x,y,depth -1,Obj_part_pulo)
        efeito_squesh(1.3,.7)
    }
}
#endregion

//definindo o estado do player
estado = estado_parado;

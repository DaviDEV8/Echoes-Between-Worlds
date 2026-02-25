
//inicia as variaveis do efeito brilho

function inicia_efeito_brilho()
{
    xscale = 1
    yscale = 1
    dir    = 1
    
    alpha_brilho = 0
    cor_brilho = c_white
}

//aplica o efeito brliho
//da para definir a cor do brilho
//consegue definir a intensidade da cor 1 é mais forte e 0 é inesxistente
function aplica_efeito_brilho(_cor = c_white, _alpha = 1)
{
    alpha_brilho = _alpha
    cor_brilho = _cor
}


//retornando para a cor original
//usa essa função no step para ele deixar de brilhar
//da pra mudar a velocidade em que muda de cor
function retorna_efeito_brilho(_vel = .1)
{
    alpha_brilho = lerp(alpha_brilho,0,_vel)
}

//desenha o efeito do brilho
function desenha_efeito_brilho()
{
    //só posso me desenhar se o alpha for maior que 0 
    //se o alpha brilho não form maior que 0 eu saio da funçao
    
    if(alpha_brilho <= 0.01)return;
        
    shader_set(Sh_muda_cor)
    draw_sprite_ext(sprite_index,image_index,x,y,xscale *dir ,yscale,image_angle,cor_brilho,alpha_brilho)
    shader_reset()
}











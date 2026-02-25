
//inicia o efeito mola
function inicia_efeito_squesh()
{
    xscale = 1
    yscale = 1
}

//aplica o efeito mola
function efeito_squesh(_xscale = 1, _yscale = 1)
{
    xscale = _xscale
    yscale = _yscale
}

//retorna o efeito
//isso vc poe no step
function retorna_squesh(_qtd = .1)
{
    xscale = lerp(xscale,1,_qtd)
    yscale = lerp(yscale,1,_qtd)
}

//esse efeito voce poe no draw para desenhar o efeito
function desenha_efeito_squesh()
{
    draw_sprite_ext(sprite_index, image_index,x,y, xscale , yscale, image_angle, image_blend, image_alpha )
}

















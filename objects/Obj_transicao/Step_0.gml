
// so acontece se o entrando na animação for true
if(entrando)
{
    // animando a sprite

    img += img_vel
    
    // checando se preencheu todas as colunas
    
    if(img - img_num > cols +1)
    {
        if(room_exists(destino))
        {
            room_goto(destino)
            //avisando que estou saindo da animação
            entrando = false
        }
        
    }
}
else
{
    img -= img_vel
    //terminou de sair, eu me destruo
    if(img < -5) instance_destroy()
}




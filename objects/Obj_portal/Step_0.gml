if(ativo)
{
    scale = lerp(scale,0.5,vel)
}
else {
	scale = lerp(scale,0,vel)
    if(scale <=0.25)
    {
        instance_destroy()
    }
}
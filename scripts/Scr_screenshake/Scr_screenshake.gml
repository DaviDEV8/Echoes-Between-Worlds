

//isso permite que a tela trema, mas é preciso colocar o objeto na room
function screenshake(_treme = 1)
{
	if (instance_exists(Obj_screenshake))
	{
		with(Obj_screenshake)
		{
			if(_treme > treme)
			{
				treme = _treme
			}
		}
	}
}
























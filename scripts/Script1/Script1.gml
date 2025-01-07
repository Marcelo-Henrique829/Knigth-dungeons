function scr_colision(colisores = [])
{
	
	var _hspd = sign(hspd)
	var _vspd = sign(vspd)
	
	
	repeat(abs(hspd))
	{
		if(place_meeting(x+_hspd,y,colisores))
		{
			hpsd = 0
		}
		else
		{
			x+=_hspd
		}
	}
	
	repeat(abs(vspd))
	{
		if(place_meeting(x,y+_vspd,colisores))
		{
			vspd = 0
		}
		else
		{
			y+=_vspd
		}
	}

}

function scr_end_animation(_sprite_index)
{
	if(sprite_index == _sprite_index)
	{
		if(image_index>=image_number-1)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
}
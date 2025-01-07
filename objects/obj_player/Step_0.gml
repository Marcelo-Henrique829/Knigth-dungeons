 #region inputs

	var _left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	var _right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	var _jump = keyboard_check_pressed(vk_space)
	var _move = _right - _left
	var _roll = keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("L"))

#endregion

var _chao = place_meeting(x,y+1,colisores)

vspd = clamp(vspd,-8,5) //limitando a velocidade vertical


Weapon()

switch(state)
{
	case "can_move":
	{
		sprite_index = spr_player_iddle
		
		hspd = _move * spd
		if(!_chao) vspd = vspd + grv
		
		
		if(_chao) //jump
		{
			if(_jump)
			{
				vspd-=10
			}
		}

		if(_move!=0) //saber a direção
		{
			dir = point_direction(0,0,_right - _left,0)
		}
		
		if(_move!=0) //direção da sprite
		{
			image_xscale = sign(hspd)
			sprite_index = spr_player_run
			
		}
		
		
		if(_roll and _chao)
		{
			state = "roll"
		}
		
		
		
	}
	break;
	
	
	
	case "roll":
	{
		sprite_index = spr_player_roll
		hspd = lengthdir_x(8,dir)
		if(!_chao) vspd = vspd + grv
		
		if(_chao) //jump
		{
			if(_jump)
			{
				vspd-=10
			}
		}

		
		if(scr_end_animation(spr_player_roll))
		{
			state = "can_move"
		}
	}
	break;
	
	
	case "attack":
	{
		hspd = 0;
		vspd = grv+1
		
	}
	break;
}



show_debug_message(hspd)
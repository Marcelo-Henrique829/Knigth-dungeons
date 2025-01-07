/// @description Insert description here
// You can write your code in this editor


switch(state)
{
		
		case "iddle":
		{
			sprite_index = spr_green_slime_Iddle
			
			if(place_meeting(x,y,obj_hit_circle)) state = "hit"
		}
		break;
		
		case "hit":
		{
			sprite_index = spr_green_slime_hit
			
			if(scr_end_animation(spr_green_slime_hit))
			{
				instance_destroy()
			}
		}
		break;
		
		
}
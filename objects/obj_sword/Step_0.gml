


if(keyboard_check(ord("J")))
{
	sprite_index = spr_sword_balance_sheet

	obj_player.state = "attack"


	
	
	
}
if(scr_end_animation(spr_sword_balance_sheet))
	{
		sprite_index = spr_sword_iddle
		obj_player.state = "can_move"

	}

image_xscale = obj_player.image_xscale /1.1
image_yscale = obj_player.image_yscale /1.1
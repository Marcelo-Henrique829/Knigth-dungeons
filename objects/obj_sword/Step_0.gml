


if(keyboard_check(ord("J")))
{
	sprite_index = spr_sword_balance_sheet

	obj_player.state = "attack"


	
	
	
}


if(sprite_index = spr_sword_balance_sheet)
{
	if(!instance_exists(obj_hit_circle)) instance_create_layer(x,y,"Instances",obj_hit_circle)

}

if(scr_end_animation(spr_sword_balance_sheet))
{
		sprite_index = spr_sword_iddle
		obj_player.state = "can_move"
		instance_destroy(obj_hit_circle)

}


image_xscale = obj_player.image_xscale /1.1
image_yscale = obj_player.image_yscale /1.1
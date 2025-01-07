draw_self()


if(sprite_index == spr_sword_balance_sheet and image_index>=10)
{
	draw_set_alpha(0.5)
		draw_circle_color(x,y,20,c_white,c_white,0)
		if(collision_circle(x,y,20,obj_green_slime,false,true))
		{
			game_restart()
		}
	draw_set_alpha(1)
	
}




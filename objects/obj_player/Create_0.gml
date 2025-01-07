

#region movimento 
vspd = 0;
hspd = 0 ;
spd = 3;
grv = 0.5;
can_jump = false;

dir = 0;


colisores = [obj_parede]
#endregion

state = "can_move"


Weapon = function()
{
	
	
	var _x = x + lengthdir_x(sprite_width/3,hspd)
	var _y = y + lengthdir_y(sprite_height,vspd)
	
	obj_sword.x = _x 
	obj_sword.y = _y 
	
	show_debug_message(_x)

}

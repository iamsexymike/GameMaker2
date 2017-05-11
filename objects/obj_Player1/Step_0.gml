/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 2E1D28EC
var l2E1D28EC_0;
l2E1D28EC_0 = mouse_check_button(mb_left);
if (l2E1D28EC_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68538C7B
	/// @DnDParent : 2E1D28EC
	/// @DnDArgument : "var" "var_Cooldown"
	/// @DnDArgument : "op" "3"
	if(var_Cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 58D0AA47
		/// @DnDParent : 68538C7B
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_Bullet"
		/// @DnDArgument : "layer" ""inst_Projectiles""
		/// @DnDSaveInfo : "objectid" "a74f3136-97f0-48e1-87bc-2138715d9a4c"
		instance_create_layer(x, y, "inst_Projectiles", obj_Bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D6CF9B9
		/// @DnDParent : 68538C7B
		/// @DnDArgument : "expr" "6"
		/// @DnDArgument : "var" "var_Cooldown"
		var_Cooldown = 6;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 281E8B1B
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "var_Cooldown"
var_Cooldown += -1;
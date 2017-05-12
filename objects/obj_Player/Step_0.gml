/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 03465AB9
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 495C0B8C
/// @DnDArgument : "angle" "direction"
image_angle = direction;

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
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12F0D307
		/// @DnDParent : 68538C7B
		/// @DnDArgument : "var" "var_Weapon"
		if(var_Weapon == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 58D0AA47
			/// @DnDParent : 12F0D307
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_Bullet"
			/// @DnDArgument : "layer" ""inst_Projectiles""
			/// @DnDSaveInfo : "objectid" "a74f3136-97f0-48e1-87bc-2138715d9a4c"
			instance_create_layer(x, y, "inst_Projectiles", obj_Bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D6CF9B9
			/// @DnDParent : 12F0D307
			/// @DnDArgument : "expr" "6"
			/// @DnDArgument : "var" "var_Cooldown"
			var_Cooldown = 6;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22CFA631
		/// @DnDParent : 68538C7B
		/// @DnDArgument : "var" "var_Weapon"
		/// @DnDArgument : "value" "1"
		if(var_Weapon == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 13052C3D
			/// @DnDParent : 22CFA631
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_Bullet"
			/// @DnDArgument : "layer" ""inst_Projectiles""
			/// @DnDSaveInfo : "objectid" "a74f3136-97f0-48e1-87bc-2138715d9a4c"
			instance_create_layer(x, y, "inst_Projectiles", obj_Bullet);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6F8CE904
			/// @DnDParent : 22CFA631
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_Bullet1"
			/// @DnDArgument : "layer" ""inst_Projectiles""
			/// @DnDSaveInfo : "objectid" "3077d5a3-7c62-46ef-b766-42acd5d1f34d"
			instance_create_layer(x, y, "inst_Projectiles", obj_Bullet1);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 69ACBE7C
			/// @DnDParent : 22CFA631
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_Bullet2"
			/// @DnDArgument : "layer" ""inst_Projectiles""
			/// @DnDSaveInfo : "objectid" "1106780e-5912-433b-ad1b-e309700688bd"
			instance_create_layer(x, y, "inst_Projectiles", obj_Bullet2);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47D54512
			/// @DnDParent : 22CFA631
			/// @DnDArgument : "expr" "6"
			/// @DnDArgument : "var" "var_Cooldown"
			var_Cooldown = 6;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 281E8B1B
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "var_Cooldown"
var_Cooldown += -1;
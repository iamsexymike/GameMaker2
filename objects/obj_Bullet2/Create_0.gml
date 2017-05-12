/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 2F30D532
/// @DnDArgument : "speed" "16"
speed = 16;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 056C3276
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y-50"
direction = point_direction(x, y, mouse_x, mouse_y-50);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 713D4527
/// @DnDArgument : "angle" "direction"
image_angle = direction;
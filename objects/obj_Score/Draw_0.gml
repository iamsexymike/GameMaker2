/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 14E732FA
/// @DnDArgument : "var" "temp_VC"
/// @DnDArgument : "value" "view_camera[0]"
var temp_VC = view_camera[0];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EBDC5FE
/// @DnDArgument : "var" "temp_VX"
/// @DnDArgument : "value" "camera_get_view_x(temp_VC)"
var temp_VX = camera_get_view_x(temp_VC);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D8E2DEA
/// @DnDArgument : "var" "temp_VY"
/// @DnDArgument : "value" "camera_get_view_y(temp_VC)"
var temp_VY = camera_get_view_y(temp_VC);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AA5F631
/// @DnDArgument : "var" "temp_CW"
/// @DnDArgument : "value" "camera_get_view_width(temp_VC)"
var temp_CW = camera_get_view_width(temp_VC);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 47013CBE
/// @DnDArgument : "font" "fnt_Score"
/// @DnDSaveInfo : "font" "df2bc743-27e2-4029-9305-80fd570532a7"
draw_set_font(fnt_Score);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7A6F0E54
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5EE82A82
/// @DnDArgument : "x" "temp_VX+(temp_CW/2)"
/// @DnDArgument : "y" "temp_VY+32"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "var_Score"
draw_text(temp_VX+(temp_CW/2), temp_VY+32, string("Score: ") + string(var_Score));
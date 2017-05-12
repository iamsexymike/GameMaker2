/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3ACAADE0
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "var_SpawnCD"
var_SpawnCD = 100;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 508890B4
/// @DnDArgument : "var" "var_SpawnX"
var_SpawnX = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38989C41
/// @DnDArgument : "var" "var_SpawnY"
var_SpawnY = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 67F1D147
/// @DnDArgument : "steps" "var_SpawnCD"
alarm_set(0, var_SpawnCD);
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 654578EB
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_Enemy"
/// @DnDArgument : "layer" ""inst_Enemy""
/// @DnDSaveInfo : "objectid" "96c57689-de74-41e1-9b1d-436028be1a15"
instance_create_layer(random(room_width), random(room_height), "inst_Enemy", obj_Enemy);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 542A779B
/// @DnDArgument : "steps" "var_SpawnCD"
alarm_set(0, var_SpawnCD);
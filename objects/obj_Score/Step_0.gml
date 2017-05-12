/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D95B640
/// @DnDArgument : "var" "var_UpgradeCounter"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "15"
if(var_UpgradeCounter >= 15)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 38FDDE89
	/// @DnDParent : 0D95B640
	/// @DnDArgument : "xpos" "random(camera_get_view_width(view_camera[0]))"
	/// @DnDArgument : "ypos" "random(camera_get_view_height(view_camera[0]))"
	/// @DnDArgument : "objectid" "obj_UpgradeItem"
	/// @DnDArgument : "layer" ""inst_Player""
	/// @DnDSaveInfo : "objectid" "772b3194-3af8-4d36-8c91-e91372c2291a"
	instance_create_layer(random(camera_get_view_width(view_camera[0])), random(camera_get_view_height(view_camera[0])), "inst_Player", obj_UpgradeItem);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25B306C8
	/// @DnDParent : 0D95B640
	/// @DnDArgument : "var" "var_UpgradeCounter"
	var_UpgradeCounter = 0;
}
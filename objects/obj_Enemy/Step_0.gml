/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 56C9CB8E
/// @DnDArgument : "obj" "obj_Player"
/// @DnDSaveInfo : "obj" "27837f0f-ae5b-4f4f-a7df-dcc494c41dc2"
var l56C9CB8E_0 = false;
l56C9CB8E_0 = instance_exists(obj_Player);
if(l56C9CB8E_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 796536FA
	/// @DnDParent : 56C9CB8E
	/// @DnDArgument : "x" "obj_Player.x"
	/// @DnDArgument : "y" "obj_Player.y"
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 208DBE11
	/// @DnDParent : 56C9CB8E
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 46AC323F
	/// @DnDParent : 56C9CB8E
	/// @DnDArgument : "speed" "var_Speed"
	speed = var_Speed;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63A3A183
	/// @DnDParent : 56C9CB8E
	/// @DnDArgument : "var" "var_HP"
	/// @DnDArgument : "op" "3"
	if(var_HP <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 29DC4B7D
		/// @DnDParent : 63A3A183
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
		/// @DnDVersion : 1
		/// @DnDHash : 0146C353
		/// @DnDParent : 63A3A183
		/// @DnDArgument : "sound" "snd_Death"
		/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
		/// @DnDSaveInfo : "sound" "1c3ba812-261d-4bb3-aab9-6ef30228a367"
		audio_sound_pitch(snd_Death, random_range(0.8,1.2));
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 28BA611B
		/// @DnDParent : 63A3A183
		/// @DnDArgument : "soundid" "snd_Death"
		/// @DnDSaveInfo : "soundid" "1c3ba812-261d-4bb3-aab9-6ef30228a367"
		audio_play_sound(snd_Death, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 077116BA
		/// @DnDApplyTo : 2e297a6a-a97b-47bb-950d-604d149eb0c2
		/// @DnDParent : 63A3A183
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "var_Score"
		with(obj_Score) {
		var_Score += 5;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7F930405
		/// @DnDApplyTo : 2e297a6a-a97b-47bb-950d-604d149eb0c2
		/// @DnDParent : 63A3A183
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "var_UpgradeCounter"
		with(obj_Score) {
		var_UpgradeCounter += 5;
		
		}
	}
}
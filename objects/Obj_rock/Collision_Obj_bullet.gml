/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48DD3AB1
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Obj_game.points"
Obj_game.points += 50;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 21C92D93
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 06D18BD7
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FFFF1B02"
effect_create_above(3, x + 0, y + 0, 1, $FFFF1B02 & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3F3C9814
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72917ACE
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 672ED6BB
	/// @DnDParent : 72917ACE
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3A627FC8
	/// @DnDParent : 72917ACE
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2FDD2CFF
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EF89CFC
	/// @DnDParent : 2FDD2CFF
	/// @DnDArgument : "var" "instance_number(Obj_rock)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(Obj_rock) < 12){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7C38D758
		/// @DnDParent : 3EF89CFC
		/// @DnDArgument : "spriteind" "spr_rock_big"
		/// @DnDSaveInfo : "spriteind" "spr_rock_big"
		sprite_index = spr_rock_big;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61DD3284
		/// @DnDParent : 3EF89CFC
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6C136D78
	/// @DnDParent : 2FDD2CFF
	else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 59E4B2BF
		/// @DnDParent : 6C136D78
		instance_destroy();}}
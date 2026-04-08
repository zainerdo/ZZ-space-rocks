/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 71F8E8DC
/// @DnDArgument : "key" "vk_up"
var l71F8E8DC_0;l71F8E8DC_0 = keyboard_check(vk_up);if (l71F8E8DC_0){	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 72B9E8FE
	/// @DnDParent : 71F8E8DC
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4868195D
/// @DnDArgument : "key" "vk_left"
var l4868195D_0;l4868195D_0 = keyboard_check(vk_left);if (l4868195D_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43509B7F
	/// @DnDParent : 4868195D
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 05A435B5
/// @DnDArgument : "key" "vk_right"
var l05A435B5_0;l05A435B5_0 = keyboard_check(vk_right);if (l05A435B5_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69D56856
	/// @DnDParent : 05A435B5
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 14CF5525
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 67C84996
var l67C84996_0;l67C84996_0 = mouse_check_button_pressed(mb_left);if (l67C84996_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5E32C86D
	/// @DnDParent : 67C84996
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_bullet"
	/// @DnDSaveInfo : "objectid" "Obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);}
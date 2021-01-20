/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check_pressed(ord("C")))
{
	Debug_Mode = !Debug_Mode;
	show_debug_message("Debug mode " + string(Debug_Mode));
}
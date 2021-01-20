/// @description debug
if (oLevelManager.Debug_Mode){
for (i = 0; i < instance_number(o_Item); i++) 
{
		instance_find(o_Item, i).MoveToPlayer = true;
}
}
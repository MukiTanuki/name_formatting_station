#
# Description:	Converts json data to nbt
# Called by:	name_formatting:store
# Entity @s:	player
# Parameters:
#   custom_name (json): json to convert to nbt
#
$data modify storage name_formatting:item_data NameFormat set value $(custom_name)

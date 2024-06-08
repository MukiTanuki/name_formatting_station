#
# Description:	Converts json data to nbt
# Called by:	name_formatting:store
# Entity @s:	player
# Parameters:
#   custom_name (json): name to check
#
# checks if modified doesn't match
$execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{NameFormat:{ModifiedName:'$(custom_name)'}}] run item modify entity @s weapon.mainhand name_formatting:remove_merged
$execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{NameFormat:{ModifiedName:'$(custom_name)'}}] run item modify entity @s weapon.mainhand name_formatting:set_modified_name
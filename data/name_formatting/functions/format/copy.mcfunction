#
# Description:	code for copying offhand to mainhand
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
execute as @s[scores={FormatName=510}] run item modify entity @s weapon.mainhand name_formatting:copy_offhand_name
#
execute as @s[scores={FormatName=610}] run item modify entity @s weapon.mainhand name_formatting:copy_offhand_lore
# store
execute as @s[scores={FormatName=511}] run function name_formatting:store
#data modify storage name_formatting:item_data NameFormat.merged set value 1
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat set from entity @s Inventory[{Slot:-106b}].tag.NameFormat
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.OriginalName set from entity @s SelectedItem.tag.display.Name
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.ModifiedName set from entity @s SelectedItem.tag.display.Name
# formulate
execute as @s[scores={FormatName=511}] run function name_formatting:formulate
# set formatting
execute as @s[scores={FormatName=511}] run function name_formatting:format/set
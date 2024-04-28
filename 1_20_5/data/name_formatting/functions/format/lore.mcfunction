#
# Description:	code for merging names
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
data remove storage name_formatting:item_lore Lore
data modify storage name_formatting:item_lore Lore set value []
# append
execute as @s[scores={FormatName=600}] run item modify entity @s weapon.mainhand name_formatting:append_lore
# prepend
execute as @s[scores={FormatName=601}] run item modify entity @s weapon.mainhand name_formatting:prepend_lore

# deleting
execute if data entity @s[scores={FormatName=602..603}] SelectedItem.components.minecraft:lore run data modify storage name_formatting:item_lore Lore append from entity @s SelectedItem.components.minecraft:lore[]
# delete last
execute if data entity @s[scores={FormatName=602}] SelectedItem.components.minecraft:lore run data remove storage name_formatting:item_lore Lore[-1]
# delete first
execute if data entity @s[scores={FormatName=603}] SelectedItem.components.minecraft:lore run data remove storage name_formatting:item_lore Lore[0]
# set lore
execute if entity @s[scores={FormatName=602..603}] run function name_formatting:set_lore with storage name_formatting:item_lore {}
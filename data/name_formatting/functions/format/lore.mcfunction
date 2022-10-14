#
# Description:	code for merging names
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
data remove storage name_formatting:item_lore Lore
data modify storage name_formatting:item_lore Lore set value []
execute if data entity @s SelectedItem.tag.display.Lore run data modify storage name_formatting:item_lore Lore append from entity @s SelectedItem.tag.display.Lore[]
# append
execute as @s[scores={FormatName=600}] run data modify storage name_formatting:item_lore Lore append from entity @s Inventory[{Slot:-106b}].tag.display.Name
# prepend
execute as @s[scores={FormatName=601}] run data modify storage name_formatting:item_lore Lore prepend from entity @s Inventory[{Slot:-106b}].tag.display.Name
# delete last
execute if data entity @s[scores={FormatName=602}] SelectedItem.tag.display.Lore run data remove storage name_formatting:item_lore Lore[-1]
# delete first
execute if data entity @s[scores={FormatName=603}] SelectedItem.tag.display.Lore run data remove storage name_formatting:item_lore Lore[0]
# set lore
item modify entity @s weapon.mainhand name_formatting:set_lore
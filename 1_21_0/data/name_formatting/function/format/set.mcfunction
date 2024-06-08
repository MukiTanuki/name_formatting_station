#
# Description:	sets nbt to item
# Called by:	name_formatting:format/styles,nameformatting:format/color,name_formatting:format/font,name_formatting:format/revert
# Entity @s:	player
#
# sets name from formatted data
#
# 
execute unless entity @s[predicate=name_formatting:mainhand_book] run item modify entity @s weapon.mainhand name_formatting:set_name
execute if entity @s[predicate=name_formatting:mainhand_book] run item modify entity @s weapon.offhand name_formatting:set_name
# copies name to modified
execute unless entity @s[predicate=name_formatting:mainhand_book] run data modify storage name_formatting:item_data NameFormat.ModifiedName set from entity @s SelectedItem.tag.display.Name
execute if entity @s[predicate=name_formatting:mainhand_book] run data modify storage name_formatting:item_data NameFormat.ModifiedName set from entity @s Inventory[{Slot:-106b}].tag.display.Name
# sets format data
execute unless entity @s[predicate=name_formatting:mainhand_book] run item modify entity @s weapon.mainhand name_formatting:set_data
execute if entity @s[predicate=name_formatting:mainhand_book] run item modify entity @s weapon.offhand name_formatting:set_data

#
# Description:	options for storing names to books
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
data remove storage name_formatting:item_data NameFormat
data modify storage name_formatting:item_data NameFormat set value {}
execute as @s[scores={FormatName=700}] run item modify entity @s weapon.mainhand name_formatting:clear_book_storage
execute as @s[scores={FormatName=701}] run item modify entity @s weapon.mainhand name_formatting:append_book_storage
execute as @s[scores={FormatName=702}] run item modify entity @s weapon.mainhand name_formatting:prepend_book_storage
execute as @s[scores={FormatName=703}] run data modify storage name_formatting:item_data NameFormat.merged set value 1
execute as @s[scores={FormatName=703}] run data modify storage name_formatting:item_data NameFormat.ModifiedName set from entity @s SelectedItem.tag.display.Lore[1]
execute as @s[scores={FormatName=703}] run item modify entity @s weapon.offhand name_formatting:book_storage_to_name
execute as @s[scores={FormatName=704}] run item modify entity @s weapon.offhand name_formatting:book_storage_append_to_lore
execute as @s[scores={FormatName=705}] run item modify entity @s weapon.offhand name_formatting:book_storage_prepend_to_lore

data remove storage name_formatting:item_lore Lore
data modify storage name_formatting:item_lore Lore set value []
execute if data entity @s Inventory[{Slot:-106b}].tag.display.Lore run data modify storage name_formatting:item_lore Lore append from entity @s Inventory[{Slot:-106b}].tag.display.Lore[]
# delete last
execute if data entity @s[scores={FormatName=706}] SelectedItem.tag.display.Lore run data remove storage name_formatting:item_lore Lore[-1]
# delete first
execute if data entity @s[scores={FormatName=707}] SelectedItem.tag.display.Lore run data remove storage name_formatting:item_lore Lore[0]
execute as @s[scores={FormatName=706..707}] run item modify entity @s weapon.offhand name_formatting:set_lore

#execute as @s[scores={FormatName=701..702}] run function name_formatting:store
#execute as @s[scores={FormatName=703..705}] run data modify storage name_formatting:item_data NameFormat set from entity @s SelectedItem.tag.StoredNameFormat
#function name_formatting:formulate
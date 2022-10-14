#
# Description:	Stores a player's held item nbt into storage
# Called by:	name_formatting:menu/format_name_trigger
# Entity @s:	player
#
# setup
#
data remove storage name_formatting:item_data NameFormat
#
# from menu
execute unless entity @s[predicate=name_formatting:mainhand_book] if data entity @s SelectedItem.tag.NameFormat run data modify storage name_formatting:item_data NameFormat set from entity @s SelectedItem.tag.NameFormat
# from book
execute if entity @s[predicate=name_formatting:mainhand_book] if data entity @s Inventory[{Slot:-106b}].tag.NameFormat run data modify storage name_formatting:item_data NameFormat set from entity @s Inventory[{Slot:-106b}].tag.NameFormat
#
# Checks if item has been renamed
#
scoreboard players set #success nfs_dummy 0
# from menu
execute unless entity @s[predicate=name_formatting:mainhand_book] if data storage name_formatting:item_data NameFormat.ModifiedName run data modify storage name_formatting:name_check Name set from entity @s SelectedItem.tag.display.Name
# from book
execute if entity @s[predicate=name_formatting:mainhand_book] if data storage name_formatting:item_data NameFormat.ModifiedName run data modify storage name_formatting:name_check Name set from entity @s Inventory[{Slot:-106b}].tag.display.Name
#
execute if data storage name_formatting:item_data NameFormat.ModifiedName store success score #success nfs_dummy run data modify storage name_formatting:name_check Name set from storage name_formatting:item_data NameFormat.ModifiedName
execute if score #success nfs_dummy matches 1.. run data remove storage name_formatting:item_data NameFormat
#from menu
execute unless entity @s[predicate=name_formatting:mainhand_book] if score #success nfs_dummy matches 1.. run data modify storage name_formatting:item_data NameFormat.OriginalName set from entity @s SelectedItem.tag.display.Name
# from book
execute if entity @s[predicate=name_formatting:mainhand_book] if score #success nfs_dummy matches 1.. run data modify storage name_formatting:item_data NameFormat.OriginalName set from entity @s Inventory[{Slot:-106b}].tag.display.Name
#
# from menu
execute unless entity @s[predicate=name_formatting:mainhand_book] unless data entity @s SelectedItem.tag.NameFormat run data modify storage name_formatting:item_data NameFormat.OriginalName set from entity @s SelectedItem.tag.display.Name
# from book
execute if entity @s[predicate=name_formatting:mainhand_book] unless data entity @s Inventory[{Slot:-106b}].tag.NameFormat run data modify storage name_formatting:item_data NameFormat.OriginalName set from entity @s Inventory[{Slot:-106b}].tag.display.Name

#data remove storage name_formatting:item_data item
#data remove storage name_formatting:item_data temp_item
#data remove storage name_formatting:item_data second_item
#scoreboard players set #success nfs_dummy 0
#
#data modify storage name_formatting:item_data item set from entity @s SelectedItem
#data modify storage name_formatting:item_data second_item set from entity @s Inventory[{ Slot: -106b }]
#
# checks if item has been renamed
#
#execute if data storage name_formatting:item_data NameFormat run data modify storage name_formatting:name_check Name set from storage name_formatting:item_data display.Name
#execute if data storage name_formatting:item_data NameFormat store success score #success nfs_dummy run data modify storage name_formatting:name_check Name set from storage name_formatting:item_data NameFormat.ModifiedName
#execute if score #success nfs_dummy matches 1.. run data remove storage name_formatting:item_data NameFormat
#
# adds formatting
#
#execute unless data storage name_formatting:item_data NameFormat run data modify storage name_formatting:item_data NameFormat set from storage name_formatting:base_format NameFormat
#execute unless data storage name_formatting:item_data NameFormat.OriginalName run data modify storage name_formatting:item_data NameFormat.OriginalName set from storage name_formatting:item_data display.Name
#execute unless data storage name_formatting:item_data NameFormat.ModifiedName run data modify storage name_formatting:item_data NameFormat.ModifiedName set from storage name_formatting:item_data display.Name
#data modify storage name_formatting:item_data display.Name set value '{"nbt":"NameFormat.font","storage":"name_formatting:item_data","interpret":"true"}'
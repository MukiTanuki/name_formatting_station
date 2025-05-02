#
# Description:	Creates a format for the item in its nbt
# Called by:	format functions
# Entity @s:	none
#
data modify storage name_formatting:item_storage item set from entity @s SelectedItem
data modify storage name_formatting:item_storage item.components.minecraft:custom_data.NameFormatting merge from storage name_formatting:base_format NameFormatting
data modify storage name_formatting:item_storage item.components.minecraft:custom_data.NameFormatting.OriginalName merge from storage name_formatting:item_storage item.components.minecraft:custom_name
data modify storage name_formatting:item_storage item.components.minecraft:custom_data.NameFormatting.ModifiedName merge from storage name_formatting:item_storage item.components.minecraft:custom_name
item modify entity @s weapon.mainhand name_formatting:reformat_name


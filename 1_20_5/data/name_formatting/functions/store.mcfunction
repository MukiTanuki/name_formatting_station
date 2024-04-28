#
# Description:	Stores a player's held item nbt into storage
# Called by:	name_formatting:menu/format_name_trigger
# Entity @s:	player
#
# setup
#
data remove storage name_formatting:item_data NameFormat
data remove storage name_formatting:item_data custom_name
data remove storage name_formatting:item_data temp
#
# Checks if player has a named item in mainhand
#
execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run return fail
#
# from menu
#
# store
data modify storage name_formatting:item_data custom_name set from entity @s SelectedItem.components.minecraft:custom_name
# check if modified
function name_formatting:helpers/check_if_modified with storage name_formatting:item_data {}
# convert json to nbt
function name_formatting:json_to_nbt with storage name_formatting:item_data {}
execute unless data storage name_formatting:item_data NameFormat{} unless data storage name_formatting:item_data NameFormat[] run data modify storage name_formatting:item_data temp.text set from storage name_formatting:item_data NameFormat
execute unless data storage name_formatting:item_data NameFormat{} unless data storage name_formatting:item_data NameFormat[] run data modify storage name_formatting:item_data temp.type set value text
execute unless data storage name_formatting:item_data NameFormat{} unless data storage name_formatting:item_data NameFormat[] run data modify storage name_formatting:item_data NameFormat set from storage name_formatting:item_data temp


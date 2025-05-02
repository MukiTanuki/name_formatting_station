#
# Description:	Stores a player's held item nbt into storage
# Called by:	name_formatting:menu/format_name_trigger
# Entity @s:	player
#
# setup
#
data remove storage name_formatting:item_data OffhandNameFormat
data remove storage name_formatting:item_data custom_name
data remove storage name_formatting:item_data temp
#
# Checks if player has a named item in offhand
#
execute unless items entity @s weapon.offhand *[minecraft:custom_name] run return fail
#
# from menu
#
# store
data modify storage name_formatting:item_data custom_name set from entity @s equipment.offhand.components.minecraft:custom_name
# check if modified (don't need this)
#function name_formatting:helpers/check_if_modified with storage name_formatting:item_data {}
# convert json to nbt - don't need any more
#function name_formatting:json_to_nbt_offhand with storage name_formatting:item_data {}
data modify storage name_formatting:item_data OffhandNameFormat set from storage name_formatting:item_data custom_name

execute unless data storage name_formatting:item_data OffhandNameFormat{} unless data storage name_formatting:item_data OffhandNameFormat[] run data modify storage name_formatting:item_data temp.text set from storage name_formatting:item_data OffhandNameFormat
execute unless data storage name_formatting:item_data OffhandNameFormat{} unless data storage name_formatting:item_data OffhandNameFormat[] run data modify storage name_formatting:item_data temp.type set value text
execute unless data storage name_formatting:item_data OffhandNameFormat{} unless data storage name_formatting:item_data OffhandNameFormat[] run data modify storage name_formatting:item_data OffhandNameFormat set from storage name_formatting:item_data temp


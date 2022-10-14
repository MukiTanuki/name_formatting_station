#
# Description:	checks if item has non-formatted name
# Called by:	format functions
# Entity @s:	none
#
execute unless data block ~ ~ ~ Items[0].tag.NameFormatting run function name_formatting:set_name_formatting
#
data modify storage name_formatting:name_check Name set from block ~ ~ ~ Items[0].tag.NameFormatting.ModifiedName
execute store success score #nfs_success nfs_dummy run data modify storage name_formatting:name_check Name set from block ~ ~ ~ Items[0].tag.display.Name
execute if score #nfs_success nfs_dummy matches 1 run function name_formatting:set_name_formatting
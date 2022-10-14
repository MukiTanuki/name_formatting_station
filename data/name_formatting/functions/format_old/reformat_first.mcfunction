#
# Description:	reformats first item then cycles between them
# Called by:	name_formatting:reformat_all
# Entity @s:	none
#
execute if data block ~ ~ ~ Items[0].tag.display.Name run function name_formatting:name_check
execute if data block ~ ~ ~ Items[0].tag.display.Name run data modify block ~ ~ ~ Items[0].tag.NameFormatting merge from storage name_formatting:reformat NameFormatting
execute if data block ~ ~ ~ Items[0].tag.display.Name run function name_formatting:validate_name
#
# puts item in storage
#
data modify storage name_formatting:chest_items Items append from block ~ ~ ~ Items[0]
data remove block ~ ~ ~ Items[0]
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[0] run function name_formatting:format/reformat_first
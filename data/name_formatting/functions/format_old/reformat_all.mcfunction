#
# Description:	reformats all items in chest to first item's format
# Called by:	name_formatting:check_reformat_all
# Entity @s:	none
#
function name_formatting:name_check
#
# sets up formatting
#
data modify storage name_formatting:reformat NameFormatting set from block ~ ~ ~ Items[0].tag.NameFormatting
data remove storage name_formatting:reformat NameFormatting.OriginalName
data remove storage name_formatting:reformat NameFormatting.ModifiedName
data modify storage name_formatting:chest_items Items set value []
data modify storage name_formatting:chest_items Items append from block ~ ~ ~ Items[0]
data remove block ~ ~ ~ Items[0]
function name_formatting:format/reformat_first
#
# refills chest
#
data modify block ~ ~ ~ Items set from storage name_formatting:chest_items Items

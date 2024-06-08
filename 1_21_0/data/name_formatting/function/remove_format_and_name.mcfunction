#
# Description:	removes format and name of all items
# Called by:	command block
# Entity @s:	none
#
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[].tag.NameFormatting run data remove block ~ ~ ~ Items[].tag.NameFormatting
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[].tag.display.Name run data remove block ~ ~ ~ Items[].tag.display.Name
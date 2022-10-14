#
# Description:	renames all items in chest to first item
# Called by:	command block
# Entity @s:	none
#
data modify block ~ ~ ~ Items[].tag.display.Name set from block ~ ~ ~ Items[0].tag.display.Name
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[0].tag.NameFormatting run data modify block ~ ~ ~ Items[].tag.NameFormatting set from block ~ ~ ~ Items[0].tag.NameFormatting
execute positioned ~ ~ ~ unless data block ~ ~ ~ Items[0].tag.NameFormatting run data remove block ~ ~ ~ Items[].tag.NameFormatting
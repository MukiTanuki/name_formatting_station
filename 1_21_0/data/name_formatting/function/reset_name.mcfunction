#
# Description:	resets name of item back to non-formatted name and removes formatting
# Called by:	command block
# Entity @s:	none
#
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[0].tag.NameFormatting run data modify block ~ ~ ~ Items[0].tag.display.Name set from block ~ ~ ~ Items[0].tag.NameFormatting.OriginalName
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[0].tag.NameFormatting run data remove block ~ ~ ~ Items[0].tag.NameFormatting
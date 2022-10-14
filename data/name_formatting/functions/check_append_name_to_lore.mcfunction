#
# Description:	checks if 2 items are present for lore
# Called by:	command blocks
# Entity @s:	none
#
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[0].tag.display.Name if data block ~ ~ ~ Items[1].tag.display.Name run function name_formatting:format/append_name_to_lore
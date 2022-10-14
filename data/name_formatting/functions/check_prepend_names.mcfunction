#
# Description:	checks if 2 items are present to combine names
# Called by:	command blocks
# Entity @s:	none
#
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[0].tag.display.Name if data block ~ ~ ~ Items[1].tag.display.Name run function name_formatting:format/prepend_names
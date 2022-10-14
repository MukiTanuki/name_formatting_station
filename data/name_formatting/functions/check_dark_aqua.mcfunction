#
# Description:	checks if there's a named item in chest
# Called by:	command block
# Entity @s:	none
#
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[0].tag.display.Name run function name_formatting:format/set_dark_aqua_name
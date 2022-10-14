#
# Description:	checks if there's a formatted name in chest
# Called by:	command block
# Entity @s:	none
#
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[0].tag.NameFormatting if data block ~ ~ ~ Items[1] run function name_formatting:format/reformat_all
#
# Description:	removes last lore in lists of lore
# Called by:	command block
# Entity @s:	none
#
execute positioned ~ ~ ~ if data block ~ ~ ~ Items[] run data remove block ~ ~ ~ Items[].tag.display.Lore[-1]
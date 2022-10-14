#
# Description:	adds item name to lore
# Called by:	name_formatting:check_append_name_to_lore
# Entity @s:	none
#
execute unless data block ~ ~ ~ Items[0].tag.display run data modify block ~ ~ ~ Items[0].tag merge value {display:{Lore:[]}}
execute unless data block ~ ~ ~ Items[0].tag.display.Lore run data modify block ~ ~ ~ Items[0].tag.display merge value {Lore:[]}
data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[1].tag.display.Name
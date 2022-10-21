#
# Description:	checks if a name is merged
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
function name_formatting:store
execute if data storage name_formatting:item_data NameFormat.merged run tellraw @s {"text":"[ Cannot format merged name! ]","color":"red"}
execute if data storage name_formatting:item_data NameFormat.merged run scoreboard players set @s FormatName 99
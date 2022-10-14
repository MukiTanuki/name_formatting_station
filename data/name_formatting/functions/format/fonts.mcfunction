#
# Description:	set font format
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
# store
function name_formatting:store
#
# fonts
#
execute as @s[scores={FormatName=300}] run data modify storage name_formatting:item_data NameFormat.font set value "minecraft:default"
execute as @s[scores={FormatName=301}] run data modify storage name_formatting:item_data NameFormat.font set value "minecraft:uniform"
execute as @s[scores={FormatName=302}] run data modify storage name_formatting:item_data NameFormat.font set value "minecraft:alt"
execute as @s[scores={FormatName=303}] run data modify storage name_formatting:item_data NameFormat.font set value "minecraft:illageralt"
# formulate
function name_formatting:formulate
# set formatting
function name_formatting:format/set
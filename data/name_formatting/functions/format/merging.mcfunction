#
# Description:	code for merging names
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
execute as @s[scores={FormatName=500}] run item modify entity @s weapon.mainhand name_formatting:append_names
execute as @s[scores={FormatName=501}] run item modify entity @s weapon.mainhand name_formatting:prepend_names
# store
function name_formatting:store
data modify storage name_formatting:item_data NameFormat.merged set value 1
# formulate
function name_formatting:formulate
# set formatting
function name_formatting:format/set
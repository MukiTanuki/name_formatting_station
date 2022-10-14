#
# Description:	code for formatting styles
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
# store
function name_formatting:store
#
# styles
# italic
execute as @s[scores={FormatName=100}] run data modify storage name_formatting:item_data NameFormat.italic set value 1
execute as @s[scores={FormatName=101}] run data modify storage name_formatting:item_data NameFormat.italic set value 0
execute as @s[scores={FormatName=102}] run data remove storage name_formatting:item_data NameFormat.italic
# underlined
execute as @s[scores={FormatName=103}] run data modify storage name_formatting:item_data NameFormat.underlined set value 1
execute as @s[scores={FormatName=104}] run data modify storage name_formatting:item_data NameFormat.underlined set value 0
execute as @s[scores={FormatName=105}] run data remove storage name_formatting:item_data NameFormat.underlined
# bold
execute as @s[scores={FormatName=106}] run data modify storage name_formatting:item_data NameFormat.bold set value 1
execute as @s[scores={FormatName=107}] run data modify storage name_formatting:item_data NameFormat.bold set value 0
execute as @s[scores={FormatName=108}] run data remove storage name_formatting:item_data NameFormat.bold
# strikethrough
execute as @s[scores={FormatName=109}] run data modify storage name_formatting:item_data NameFormat.strikethrough set value 1
execute as @s[scores={FormatName=110}] run data modify storage name_formatting:item_data NameFormat.strikethrough set value 0
execute as @s[scores={FormatName=111}] run data remove storage name_formatting:item_data NameFormat.strikethrough
# obfuscated
execute as @s[scores={FormatName=112}] run data modify storage name_formatting:item_data NameFormat.obfuscated set value 1
execute as @s[scores={FormatName=113}] run data modify storage name_formatting:item_data NameFormat.obfuscated set value 0
execute as @s[scores={FormatName=114}] run data remove storage name_formatting:item_data NameFormat.obfuscated
# formulate
function name_formatting:formulate
# set formatting
function name_formatting:format/set

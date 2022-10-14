#
# Description:	set color format
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
# store
function name_formatting:store
#
# colors
execute as @s[scores={FormatName=199}] run data remove storage name_formatting:item_data NameFormat.color
execute as @s[scores={FormatName=200}] run data modify storage name_formatting:item_data NameFormat.color set value "#f9fffe"
execute as @s[scores={FormatName=201}] run data modify storage name_formatting:item_data NameFormat.color set value "#f38baa"
execute as @s[scores={FormatName=202}] run data modify storage name_formatting:item_data NameFormat.color set value "#b02e26"
execute as @s[scores={FormatName=203}] run data modify storage name_formatting:item_data NameFormat.color set value "#f9801d"
execute as @s[scores={FormatName=204}] run data modify storage name_formatting:item_data NameFormat.color set value "#fed83d"
execute as @s[scores={FormatName=205}] run data modify storage name_formatting:item_data NameFormat.color set value "#80c71f"
execute as @s[scores={FormatName=206}] run data modify storage name_formatting:item_data NameFormat.color set value "#5e7c16"
execute as @s[scores={FormatName=207}] run data modify storage name_formatting:item_data NameFormat.color set value "#169c9c"
execute as @s[scores={FormatName=208}] run data modify storage name_formatting:item_data NameFormat.color set value "#3ab3da"
execute as @s[scores={FormatName=209}] run data modify storage name_formatting:item_data NameFormat.color set value "#3c44aa"
execute as @s[scores={FormatName=210}] run data modify storage name_formatting:item_data NameFormat.color set value "#8932b8"
execute as @s[scores={FormatName=211}] run data modify storage name_formatting:item_data NameFormat.color set value "#c74ebd"
execute as @s[scores={FormatName=212}] run data modify storage name_formatting:item_data NameFormat.color set value "#835432"
execute as @s[scores={FormatName=213}] run data modify storage name_formatting:item_data NameFormat.color set value "#9d9d97"
execute as @s[scores={FormatName=214}] run data modify storage name_formatting:item_data NameFormat.color set value "#474f52"
execute as @s[scores={FormatName=215}] run data modify storage name_formatting:item_data NameFormat.color set value "#1d1d21"
execute as @s[scores={FormatName=216}] run data modify storage name_formatting:item_data NameFormat.color set value "black"
execute as @s[scores={FormatName=217}] run data modify storage name_formatting:item_data NameFormat.color set value "dark_gray"
execute as @s[scores={FormatName=218}] run data modify storage name_formatting:item_data NameFormat.color set value "gray"
execute as @s[scores={FormatName=219}] run data modify storage name_formatting:item_data NameFormat.color set value "white"
execute as @s[scores={FormatName=220}] run data modify storage name_formatting:item_data NameFormat.color set value "red"
execute as @s[scores={FormatName=221}] run data modify storage name_formatting:item_data NameFormat.color set value "yellow"
execute as @s[scores={FormatName=222}] run data modify storage name_formatting:item_data NameFormat.color set value "green"
execute as @s[scores={FormatName=223}] run data modify storage name_formatting:item_data NameFormat.color set value "aqua"
execute as @s[scores={FormatName=224}] run data modify storage name_formatting:item_data NameFormat.color set value "blue"
execute as @s[scores={FormatName=225}] run data modify storage name_formatting:item_data NameFormat.color set value "light_purple"
execute as @s[scores={FormatName=226}] run data modify storage name_formatting:item_data NameFormat.color set value "dark_red"
execute as @s[scores={FormatName=227}] run data modify storage name_formatting:item_data NameFormat.color set value "gold"
execute as @s[scores={FormatName=228}] run data modify storage name_formatting:item_data NameFormat.color set value "dark_green"
execute as @s[scores={FormatName=229}] run data modify storage name_formatting:item_data NameFormat.color set value "dark_aqua"
execute as @s[scores={FormatName=230}] run data modify storage name_formatting:item_data NameFormat.color set value "dark_blue"
execute as @s[scores={FormatName=231}] run data modify storage name_formatting:item_data NameFormat.color set value "dark_purple"
# formulate
function name_formatting:formulate
# set formatting
function name_formatting:format/set

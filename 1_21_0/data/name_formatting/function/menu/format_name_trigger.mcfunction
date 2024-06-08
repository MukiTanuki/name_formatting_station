#
# Description:	trigger for FormatName
# Called by:	name_formatting:second
# Entity @s:	player
#

# menus
execute as @s[scores={FormatName=1}] run function name_formatting:menu/main
execute as @s[scores={FormatName=2}] run function name_formatting:menu/styles
# color menus
execute as @s[scores={FormatName=3}] run function name_formatting:menu/colors
execute as @s[scores={FormatName=4}] run function name_formatting:menu/colors_2
execute as @s[scores={FormatName=5}] run function name_formatting:menu/colors_3
execute as @s[scores={FormatName=6}] run function name_formatting:menu/colors_4
# font
execute as @s[scores={FormatName=10}] run function name_formatting:menu/fonts
# revert
execute as @s[scores={FormatName=11}] run function name_formatting:menu/revert
# merging
execute as @s[scores={FormatName=12}] run function name_formatting:menu/merging
# lore
execute as @s[scores={FormatName=13}] run function name_formatting:menu/lore

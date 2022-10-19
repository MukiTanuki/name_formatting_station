#
# Description:	the main menu for the name formatting station
# Called by:	name_formatting:menu/format_name_trigger
# Entity @s:	player
#
#tellraw @s ["",{"text":"[ Styles ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 2"}},{"text":"\n","color":"gold"},{"text":"[ Colors ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 3"}},{"text":"\n","color":"gold"},{"text":"[ Fonts ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 10"}},{"text":"\n","color":"gold"},{"text":"[ Revert ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 11"}},{"text":"\n","color":"gold"},{"text":"[ Merging ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 12"}},{"text":"\n","color":"gold"},{"text":"[ Lore ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 13"}},{"text":" "}]
# menus
function name_formatting:menu/styles
function name_formatting:menu/colors
function name_formatting:menu/fonts
function name_formatting:menu/revert
function name_formatting:menu/merging
function name_formatting:menu/lore
# store
function name_formatting:store

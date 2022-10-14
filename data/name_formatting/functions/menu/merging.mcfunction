#
# Description:	menu for merging
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
# append
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 500" }},{"text":"[ ","color": "gold"},{"text": "Append offhand to mainhand", "color": "gold"},{"text":" ]","color": "gold"}]
# prepend
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 501" }},{"text":"[ ","color": "gold"},{"text": "Prepend offhand to mainhand", "color": "gold"},{"text":" ]","color": "gold"}]
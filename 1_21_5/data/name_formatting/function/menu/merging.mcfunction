#
# Description:	menu for merging
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
tellraw @s [{"text": "Offhand to Mainhand ","color": "gold"},{"text":"[Append]", "color": "yellow", "click_event": { "action": "run_command", "command": "/trigger FormatName set 500" }},{"text":" or ","color": "gold"},{"text":"[Prepend]", "color": "yellow", "click_event": { "action": "run_command", "command": "/trigger FormatName set 501" }}]
# append
#tellraw @s [{"text":"", "click_event": { "action": "run_command", "command": "/trigger FormatName set 500" }},{"text":"[ ","color": "gold"},{"text": "Append offhand to mainhand", "color": "gold"},{"text":" ]","color": "gold"}]
# prepend
#tellraw @s [{"text":"", "click_event": { "action": "run_command", "command": "/trigger FormatName set 501" }},{"text":"[ ","color": "gold"},{"text": "Prepend offhand to mainhand", "color": "gold"},{"text":" ]","color": "gold"}]
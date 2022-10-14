#
# Description:	menu for merging
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
# append
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 600" }},{"text":"[ ","color": "gold"},{"text": "Append offhand to Lore", "color": "gold"},{"text":" ]","color": "gold"}]
# prepend
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 601" }},{"text":"[ ","color": "gold"},{"text": "Prepend offhand to Lore", "color": "gold"},{"text":" ]","color": "gold"}]
# delete last
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 602" }},{"text":"[ ","color": "gold"},{"text": "Remove last Lore", "color": "gold"},{"text":" ]","color": "gold"}]
# delete first
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 603" }},{"text":"[ ","color": "gold"},{"text": "Remove first Lore", "color": "gold"},{"text":" ]","color": "gold"}]
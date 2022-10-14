#
# Description:	menu for fonts
# Called by:	name_formatting:menu/main
# Entity @s:	player
#

# store
function name_formatting:store
function name_formatting:formulate

# minecraft:default
#data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:default"}'
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 400" }},{"text":"[ ","color": "gold"},{"text": "revert all formatting?: ", "color": "gold"},{"nbt": "NameFormat.OriginalName", "storage": "name_formatting:item_data", "interpret": "true" },{"text":" ]","color": "gold"}]
#
# Description:	color formatting menu 1
# Called by:	name_formatting:menu/main
# Entity @s:	player
#

function name_formatting:store
function name_formatting:formulate
# white dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#f9fffe"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 200" }},{"text":"[ ","color": "gold"},{"text": "white dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# orange dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#f9801d"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 201" }},{"text":"[ ","color": "gold"},{"text": "orange dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# magenta dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#c74ebd"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 202" }},{"text":"[ ","color": "gold"},{"text": "magenta dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# light blue dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#3ab3da"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 203" }},{"text":"[ ","color": "gold"},{"text": "light blue dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# yellow dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#fed83d"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 204" }},{"text":"[ ","color": "gold"},{"text": "yellow dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# lime dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#80c71f"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 205" }},{"text":"[ ","color": "gold"},{"text": "lime dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# pink dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#f38baa"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 206" }},{"text":"[ ","color": "gold"},{"text": "pink dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# gray dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#474f52"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 207" }},{"text":"[ ","color": "gold"},{"text": "gray dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
tellraw @s ["",{"text":"<<<","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 6"}},{"text":" \u0020 ","color":"gold"},{"text":">>>","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 4"}}]
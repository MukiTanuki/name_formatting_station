#
# Description:	color formatting menu 3
# Called by:	name_formatting:menu/colors_2
# Entity @s:	player
#

function name_formatting:store
function name_formatting:formulate
# system black
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"black"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 216" }},{"text":"[ ","color": "gold"},{"text": "system black: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system dark blue
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"dark_blue"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 217" }},{"text":"[ ","color": "gold"},{"text": "system dark blue: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system dark green
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"dark_green"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 218" }},{"text":"[ ","color": "gold"},{"text": "system dark green: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system dark aqua
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"dark_aqua"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 219" }},{"text":"[ ","color": "gold"},{"text": "system dark aqua: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system dark red
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"dark_red"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 220" }},{"text":"[ ","color": "gold"},{"text": "system dark red: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system dark purple
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"dark_purple"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 221" }},{"text":"[ ","color": "gold"},{"text": "system dark purple: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system gold
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"gold"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 222" }},{"text":"[ ","color": "gold"},{"text": "system gold: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system gray
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"gray"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 223" }},{"text":"[ ","color": "gold"},{"text": "system gray: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
tellraw @s ["",{"text":"<<<","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 4"}},{"text":" \u0020 ","color":"gold"},{"text":">>>","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 6"}}]
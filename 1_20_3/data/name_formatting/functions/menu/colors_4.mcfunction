#
# Description:	color formatting menu 4
# Called by:	name_formatting:menu/colors_3
# Entity @s:	player
#

function name_formatting:store
function name_formatting:formulate
# system dark gray
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"dark_gray"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 224" }},{"text":"[ ","color": "gold"},{"text": "system dark gray: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system blue
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"blue"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 225" }},{"text":"[ ","color": "gold"},{"text": "system blue: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system green
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"green"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 226" }},{"text":"[ ","color": "gold"},{"text": "system green: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system aqua
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"aqua"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 227" }},{"text":"[ ","color": "gold"},{"text": "system aqua: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system red
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"red"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 228" }},{"text":"[ ","color": "gold"},{"text": "system red: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system light purple
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"light_purple"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 229" }},{"text":"[ ","color": "gold"},{"text": "system light purple: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system yellow
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"yellow"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 230" }},{"text":"[ ","color": "gold"},{"text": "system yellow: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# system white
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"white"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 231" }},{"text":"[ ","color": "gold"},{"text": "system white: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
tellraw @s ["",{"text":"<<<","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 5"}},{"text":" \u0020 ","color":"gold"},{"text":">>>","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 3"}}]

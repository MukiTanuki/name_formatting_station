#
# Description:	color formatting menu 2
# Called by:	name_formatting:menu/colors_1
# Entity @s:	player
#

function name_formatting:store
function name_formatting:formulate
# light gray dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#9d9d97"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 208" }},{"text":"[ ","color": "gold"},{"text": "light gray dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# cyan dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#169c9c"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 209" }},{"text":"[ ","color": "gold"},{"text": "cyan dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# purple dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#8932b8"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 210" }},{"text":"[ ","color": "gold"},{"text": "purple dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# blue dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#3c44aa"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 211" }},{"text":"[ ","color": "gold"},{"text": "blue dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# brown dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#835432"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 212" }},{"text":"[ ","color": "gold"},{"text": "brown dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# green dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#5e7c16"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 213" }},{"text":"[ ","color": "gold"},{"text": "green dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# red dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#b02e26"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 214" }},{"text":"[ ","color": "gold"},{"text": "red dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
# black dye
data modify storage name_formatting:item_format NameFormat.color set value '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"#1d1d21"}'
tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 215" }},{"text":"[ ","color": "gold"},{"text": "black dye: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
tellraw @s ["",{"text":"<<<","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 3"}},{"text":" \u0020 ","color":"gold"},{"text":">>>","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 5"}}]
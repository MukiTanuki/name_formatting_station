#
# Description:	menu for fonts
# Called by:	name_formatting:menu/main
# Entity @s:	player
#

# store
function name_formatting:store
function name_formatting:formulate

tellraw @s [{"color":"gold","text":""},{"text":"[minecraft:uniform]","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 300" }}," ",{"text":"[minecraft:default]","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 301" }},"\n",{"text":"[minecraft:alt]","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 302" }}," ",{"text":"[minecraft:illageralt]","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 303" }}]

# minecraft:default
#data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:default"}'
#tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 300" }},{"text":"[  ","color": "gold"},{"text":" ","bold":"true"},{"text": "minecraft:default: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

# minecraft:uniform
#data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:uniform"}'
#tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 301" }},{"text":"[   ","color": "gold"},{"text": "minecraft:uniform: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

# minecraft:alt
#data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:alt"}'
#tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 302" }},{"text":"[         ","color": "gold"},{"text": "minecraft:alt: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

# minecraft:illageralt
#data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:illageralt"}'
#tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 303" }},{"text":"[ ","color": "gold"},{"text": "minecraft:illageralt: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

# custom fonts
#function name_formatting:menu/custom_fonts

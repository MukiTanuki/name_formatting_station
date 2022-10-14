#
# Description:	menu for fonts
# Called by:	name_formatting:menu/main
# Entity @s:	player
#

# store
function name_formatting:store
function name_formatting:formulate
# menu
#tellraw @s ["",{"text": "\n======================================", "color": "gray", "strikethrough": "true"},{"text": "\n<<< Name Formatting Station by ", "color": "#4aeaff"},{"text": "MukiTanuki", "color": "#4aeaff", "clickEvent": { "action": "open_url", "value": "https://twitter.com/MukiTanuki"} },{"text": " >>>", "color": "#4aeaff"},{"text": "\n======================================", "color": "gray", "strikethrough": "true"}]
#tellraw @s [{"text": "         <<< Font Menu >>>", "color": "#a1eb34", "bold": "true"}]

# minecraft:default
data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:default"}'
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 300" }},{"text":"[  ","color": "gold"},{"text":" ","bold":"true"},{"text": "minecraft:default: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

# minecraft:uniform
data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:uniform"}'
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 301" }},{"text":"[   ","color": "gold"},{"text": "minecraft:uniform: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

# minecraft:alt
data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:alt"}'
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 302" }},{"text":"[         ","color": "gold"},{"text": "minecraft:alt: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

# minecraft:illageralt
data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:illageralt"}'
tellraw @s [{"text":"", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 303" }},{"text":"[ ","color": "gold"},{"text": "minecraft:illageralt: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

# custom fonts
#function name_formatting:menu/custom_fonts

# resets tag
#data modify storage name_formatting:item_format NameFormat.font set from storage name_formatting:item_format temp_NameFormat.font
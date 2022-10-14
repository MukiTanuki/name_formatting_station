#
# Description:	style formatting menu
# Called by:	name_formatting:menu/main
# Entity @s:	player
#

function name_formatting:store
# italic
function name_formatting:formulate
#
execute unless data storage name_formatting:item_data NameFormat{ italic: 1 } run data modify storage name_formatting:item_format NameFormat.italic set value '{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true","italic":"true"}'
execute if data storage name_formatting:item_data NameFormat{ italic: 1 } run data modify storage name_formatting:item_format NameFormat.italic set value '{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true","italic":"false"}'
#
execute unless data storage name_formatting:item_format temp_NameFormat{ italic: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[           ","color": "gold"},{"text": "Italic: ", "color": "gold"},{"text": "T: ", "color": "green"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
execute if data storage name_formatting:item_format temp_NameFormat{ italic: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[           ","color": "gold"},{"text": "Italic: ", "color": "gold"},{"text": "F: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

#execute unless data storage name_formatting:item_format temp_NameFormat{ italic: '{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true","italic":"true"}' } run data modify storage name_formatting:item_format NameFormat.italic set value '{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true","italic":"true"}'
#execute unless data storage name_formatting:item_format temp_NameFormat{ italic: '{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true","italic":"true"}' } run tellraw @s ["           ",{"text": "Italic: ", "color": "gold"},{"text": " true: ", "color": "green"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" } }]
#execute if data storage name_formatting:item_format temp_NameFormat{ italic: '{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true","italic":"true"}' } run data modify storage name_formatting:item_format NameFormat.italic set value '{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true","italic":"false"}'
#execute if data storage name_formatting:item_format temp_NameFormat{ italic: '{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true","italic":"true"}' } run tellraw @s ["           ",{"text": "Italic: ", "color": "gold"},{"text": "false: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 12" } }]
#data modify storage name_formatting:item_format NameFormat.italic set from storage name_formatting:item_format temp_NameFormat.italic

# underlined
function name_formatting:formulate
#
execute unless data storage name_formatting:item_format temp_NameFormat{ underlined: 1 } run data modify storage name_formatting:item_format NameFormat.underlined set value '{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true","underlined":"true"}'
execute if data storage name_formatting:item_format temp_NameFormat{ underlined: 1 } run data modify storage name_formatting:item_format NameFormat.underlined set value '{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true","underlined":"false"}'
#
execute unless data storage name_formatting:item_format temp_NameFormat{ underlined: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[    ","color": "gold"},{"text": "Underlined: ", "color": "gold"},{"text": "T: ", "color": "green"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
execute if data storage name_formatting:item_format temp_NameFormat{ underlined: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[    ","color": "gold"},{"text": "Underlined: ", "color": "gold"},{"text": "F: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]



#execute unless data storage name_formatting:item_format temp_NameFormat{ underlined: '{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true","underlined":"true"}' } run data modify storage name_formatting:item_format NameFormat.underlined set value '{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true","underlined":"true"}'
#execute unless data storage name_formatting:item_format temp_NameFormat{ underlined: '{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true","underlined":"true"}' } run tellraw @s ["    ",{"text": "Underlined: ", "color": "gold"},{"text": " true: ", "color": "green"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 13" } }]
#execute if data storage name_formatting:item_format temp_NameFormat{ underlined: '{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true","underlined":"true"}' } run data modify storage name_formatting:item_format NameFormat.underlined set value '{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true","underlined":"false"}'
#execute if data storage name_formatting:item_format temp_NameFormat{ underlined: '{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true","underlined":"true"}' } run tellraw @s ["    ",{"text": "Underlined: ", "color": "gold"},{"text": "false: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 14" } }]
#data modify storage name_formatting:item_format NameFormat.underlined set from storage name_formatting:item_format temp_NameFormat.underlined

# bold
function name_formatting:formulate
#
execute unless data storage name_formatting:item_format temp_NameFormat{ bold: 1 } run data modify storage name_formatting:item_format NameFormat.bold set value '{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true","bold":"true"}'
execute if data storage name_formatting:item_format temp_NameFormat{ bold: 1 } run data modify storage name_formatting:item_format NameFormat.bold set value '{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true","bold":"false"}'
#
execute unless data storage name_formatting:item_format temp_NameFormat{ bold: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[            ","color": "gold"},{"text": "Bold: ", "color": "gold"},{"text": "T: ", "color": "green"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
execute if data storage name_formatting:item_format temp_NameFormat{ bold: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[            ","color": "gold"},{"text": "Bold: ", "color": "gold"},{"text": "F: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

#execute unless data storage name_formatting:item_format temp_NameFormat{ bold: '{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true","bold":"true"}' } run data modify storage name_formatting:item_format NameFormat.bold set value '{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true","bold":"true"}'
#execute unless data storage name_formatting:item_format temp_NameFormat{ bold: '{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true","bold":"true"}' } run tellraw @s ["            ",{"text": "Bold: ", "color": "gold"},{"text": " true: ", "color": "green"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 15" } }]

#execute if data storage name_formatting:item_format temp_NameFormat{ bold: '{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true","bold":"true"}' } run data modify storage name_formatting:item_format NameFormat.bold set value '{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true","bold":"false"}'
#execute if data storage name_formatting:item_format temp_NameFormat{ bold: '{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true","bold":"true"}' } run tellraw @s ["            ",{"text": "Bold: ", "color": "gold"},{"text": "false: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 16" } }]
#data modify storage name_formatting:item_format NameFormat.bold set from storage name_formatting:item_format temp_NameFormat.bold

# strikethrough
function name_formatting:formulate
#
execute unless data storage name_formatting:item_format temp_NameFormat{ strikethrough: 1 } run data modify storage name_formatting:item_format NameFormat.strikethrough set value '{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true","strikethrough":"true"}'
execute if data storage name_formatting:item_format temp_NameFormat{ strikethrough: 1 } run data modify storage name_formatting:item_format NameFormat.strikethrough set value '{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true","strikethrough":"false"}'
#
execute unless data storage name_formatting:item_format temp_NameFormat{ bold: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[","color": "gold"},{"text": "Strikethrough: ", "color": "gold"},{"text": "T: ", "color": "green"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
execute if data storage name_formatting:item_format temp_NameFormat{ bold: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[","color": "gold"},{"text": "Strikethrough: ", "color": "gold"},{"text": "F: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

#execute unless data storage name_formatting:item_format temp_NameFormat{ strikethrough: '{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true","strikethrough":"true"}' } run data modify storage name_formatting:item_format NameFormat.strikethrough set value '{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true","strikethrough":"true"}'
#execute unless data storage name_formatting:item_format temp_NameFormat{ strikethrough: '{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true","strikethrough":"true"}' } run tellraw @s ["",{"text": "Strikethrough: ", "color": "gold"},{"text": " true: ", "color": "green"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 17" } }]
#execute if data storage name_formatting:item_format temp_NameFormat{ strikethrough: '{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true","strikethrough":"true"}' } run data modify storage name_formatting:item_format NameFormat.strikethrough set value '{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true","strikethrough":"false"}'
#execute if data storage name_formatting:item_format temp_NameFormat{ strikethrough: '{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true","strikethrough":"true"}' } run tellraw @s ["",{"text": "Strikethrough: ", "color": "gold"},{"text": "false: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 18" } }]
#data modify storage name_formatting:item_format NameFormat.strikethrough set from storage name_formatting:item_format temp_NameFormat.strikethrough

# obfuscated
function name_formatting:formulate
#
execute unless data storage name_formatting:item_format temp_NameFormat{ obfuscated: 1 } run data modify storage name_formatting:item_format NameFormat.obfuscated set value '{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true","obfuscated":"true"}'
execute if data storage name_formatting:item_format temp_NameFormat{ obfuscated: 1 } run data modify storage name_formatting:item_format NameFormat.obfuscated set value '{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true","obfuscated":"false"}'
#
execute unless data storage name_formatting:item_format temp_NameFormat{ obfuscated: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[   ","color": "gold"},{"text": "Obfuscated: ", "color": "gold"},{"text": "T: ", "color": "green"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]
execute if data storage name_formatting:item_format temp_NameFormat{ obfuscated: 1 } run tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" }},{"text":"[   ","color": "gold"},{"text": "Obfuscated: ", "color": "gold"},{"text": "F: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]

#
#execute unless data storage name_formatting:item_format temp_NameFormat{ obfuscated: '{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true","obfuscated":"true"}' } run data modify storage name_formatting:item_format NameFormat.obfuscated set value '{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true","obfuscated":"true"}'
#execute unless data storage name_formatting:item_format temp_NameFormat{ obfuscated: '{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true","obfuscated":"true"}' } run tellraw @s ["   ",{"text": "Obfuscated: ", "color": "gold"},{"text": " true: ", "color": "green"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 19" } }]
#execute if data storage name_formatting:item_format temp_NameFormat{ obfuscated: '{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true","obfuscated":"true"}' } run data modify storage name_formatting:item_format NameFormat.obfuscated set value '{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true","obfuscated":"false"}'
#execute if data storage name_formatting:item_format temp_NameFormat{ obfuscated: '{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true","obfuscated":"true"}' } run tellraw @s ["   ",{"text": "Obfuscated: ", "color": "gold"},{"text": "false: ", "color": "red"},{"nbt": "display.Name", "storage": "name_formatting:item_format", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 20" } }]
#data modify storage name_formatting:item_format NameFormat.obfuscated set from storage name_formatting:item_format temp_NameFormat.obfuscated
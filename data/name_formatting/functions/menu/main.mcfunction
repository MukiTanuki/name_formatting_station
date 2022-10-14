#
# Description:	the main menu for the name formatting station
# Called by:	name_formatting:menu/format_name_trigger
# Entity @s:	player
#
tellraw @a ["",{"text":"[ Styles ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 2"}},{"text":"\n","color":"gold"},{"text":"[ Colors ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 3"}},{"text":"\n","color":"gold"},{"text":"[ Fonts ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 10"}},{"text":"\n","color":"gold"},{"text":"[ Revert ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 11"}},{"text":"\n","color":"gold"},{"text":"[ Merging ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 12"}},{"text":"\n","color":"gold"},{"text":"[ Lore ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 13"}},{"text":" "}]
# store
function name_formatting:store
#data modify storage name_formatting:item_storage temp_item set from storage name_formatting:item_storage item
# menu
#tellraw @s ["",{"text": "\n======================================", "color": "gray", "strikethrough": "true"},{"text": "\n<<< Name Formatting Station by ", "color": "#4aeaff"},{"text": "MukiTanuki", "color": "#4aeaff", "clickEvent": { "action": "open_url", "value": "https://twitter.com/MukiTanuki"} },{"text": " >>>", "color": "#4aeaff"},{"text": "\n======================================", "color": "gray", "strikethrough": "true"}]

# show cost

# revert
#tellraw @s ["         ",{"text": "Revert:  ", "color": "#fffa59"},{"nbt": "item.tag.NameFormatting.OriginalName", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 9" } }]

# color
#execute as @s[predicate=name_formatting:offhand_dye] run function name_formatting:format/color
#execute as @s[predicate=name_formatting:offhand_dye] run tellraw @s ["           ",{"text": "Color:  ", "color": "#fffa59"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 10" }, "hoverEvent": { "action": "show_text", "value": "Consumes a dye upon use."}}]

#execute as @s[predicate=name_formatting:offhand_dye] run data modify storage name_formatting:item_storage item.tag.NameFormatting.color set from storage name_formatting:item_storage temp_item.tag.NameFormatting.color

#execute as @s[predicate=!name_formatting:offhand_dye] run tellraw @s ["           ",{"text": "Color:  ", "color": "#fffa59"},{"text": "Hold dye in offhand", "color": "gray"}]

# italic
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ italic: '{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.italic set value '{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"true"}'
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ italic: '{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"true"}' } run tellraw @s ["           ",{"text": "Italic: ", "color": "#fffa59"},{"text": " true: ", "color": "green"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 11" } }]
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ italic: '{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.italic set value '{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"false"}'
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ italic: '{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"true"}' } run tellraw @s ["           ",{"text": "Italic: ", "color": "#fffa59"},{"text": "false: ", "color": "red"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 12" } }]
#data modify storage name_formatting:item_storage item.tag.NameFormatting.italic set from storage name_formatting:item_storage temp_item.tag.NameFormatting.italic

# underlined
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ underlined: '{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.underlined set value '{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"true"}'
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ underlined: '{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"true"}' } run tellraw @s ["    ",{"text": "Underlined: ", "color": "#fffa59"},{"text": " true: ", "color": "green"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 13" } }]
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ underlined: '{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.underlined set value '{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"false"}'
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ underlined: '{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"true"}' } run tellraw @s ["    ",{"text": "Underlined: ", "color": "#fffa59"},{"text": "false: ", "color": "red"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 14" } }]
#data modify storage name_formatting:item_storage item.tag.NameFormatting.underlined set from storage name_formatting:item_storage temp_item.tag.NameFormatting.underlined

# bold
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ bold: '{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.bold set value '{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"true"}'
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ bold: '{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"true"}' } run tellraw @s ["            ",{"text": "Bold: ", "color": "#fffa59"},{"text": " true: ", "color": "green"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 15" } }]

#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ bold: '{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.bold set value '{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"false"}'
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ bold: '{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"true"}' } run tellraw @s ["            ",{"text": "Bold: ", "color": "#fffa59"},{"text": "false: ", "color": "red"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 16" } }]
#data modify storage name_formatting:item_storage item.tag.NameFormatting.bold set from storage name_formatting:item_storage temp_item.tag.NameFormatting.bold

# strikethrough
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ strikethrough: '{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.strikethrough set value '{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"true"}'
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ strikethrough: '{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"true"}' } run tellraw @s ["",{"text": "Strikethrough: ", "color": "#fffa59"},{"text": " true: ", "color": "green"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 17" } }]
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ strikethrough: '{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.strikethrough set value '{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"false"}'
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ strikethrough: '{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"true"}' } run tellraw @s ["",{"text": "Strikethrough: ", "color": "#fffa59"},{"text": "false: ", "color": "red"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 18" } }]
#data modify storage name_formatting:item_storage item.tag.NameFormatting.strikethrough set from storage name_formatting:item_storage temp_item.tag.NameFormatting.strikethrough

# obfuscated
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ obfuscated: '{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.obfuscated set value '{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"true"}'
#execute unless data storage name_formatting:item_storage temp_item.tag.NameFormatting{ obfuscated: '{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"true"}' } run tellraw @s ["   ",{"text": "Obfuscated: ", "color": "#fffa59"},{"text": " true: ", "color": "green"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 19" } }]
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ obfuscated: '{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"true"}' } run data modify storage name_formatting:item_storage item.tag.NameFormatting.obfuscated set value '{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"false"}'
#execute if data storage name_formatting:item_storage temp_item.tag.NameFormatting{ obfuscated: '{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"true"}' } run tellraw @s ["   ",{"text": "Obfuscated: ", "color": "#fffa59"},{"text": "false: ", "color": "red"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 20" } }]
#data modify storage name_formatting:item_storage item.tag.NameFormatting.obfuscated set from storage name_formatting:item_storage temp_item.tag.NameFormatting.obfuscated

# append
#execute unless data storage name_formatting:item_storage second_item.tag.display.Name run tellraw @s ["     ",{"text": "Append Names:  ", "color": "#d762d9"},{"text": "Hold named items in offhand and mainhand", "color": "gray"}]
#execute if data storage name_formatting:item_storage second_item.tag.display.Name run tellraw @s ["     ",{"text": "Append Names:  ", "color": "#d762d9"},{"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 30" } }, {"nbt": "second_item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 30" } }]

# prepend
#execute unless data storage name_formatting:item_storage second_item.tag.display.Name run tellraw @s ["   ",{"text": "Prepend Names:  ", "color": "#d762d9"},{"text": "Hold named items in offhand and mainhand", "color": "gray"}]
#execute if data storage name_formatting:item_storage second_item.tag.display.Name run tellraw @s ["   ",{"text": "Prepend Names:  ", "color": "#d762d9"},{"nbt": "second_item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 31" } }, {"nbt": "item.tag.display.Name", "storage": "name_formatting:item_storage", "interpret": "true", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 31" } }]

# lore append
#execute unless data storage name_formatting:item_storage second_item.tag.display.Name run tellraw @s ["   ",{"text": "Append to Lore:  ", "color": "#5fe3e1"},{"text": "Hold named item in offhand", "color": "gray"}]

#execute if data storage name_formatting:item_storage second_item.tag.display.Name run data modify storage name_formatting:item_storage item.tag.display.Lore append from storage name_formatting:item_storage second_item.tag.display.Name
#execute if data storage name_formatting:item_storage second_item.tag.display.Name run data modify storage name_formatting:item_storage item.tag.display.Lore prepend value '""'

#execute if data storage name_formatting:item_storage second_item.tag.display.Name run tellraw @s ["   ",{"text": "Append to Lore:  ", "color": "#5fe3e1"}, {"nbt": "item.tag.display.Lore[]", "storage": "name_formatting:item_storage", "interpret": "true", "separator": " | ", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 40" } }]

#execute if data storage name_formatting:item_storage temp_item.tag.display.Lore run data modify storage name_formatting:item_storage item.tag.display.Lore set from storage name_formatting:item_storage temp_item.tag.display.Lore
#execute unless data storage name_formatting:item_storage temp_item.tag.display.Lore run data remove storage name_formatting:item_storage item.tag.display.Lore

# lore prepend
#execute unless data storage name_formatting:item_storage second_item.tag.display.Name run tellraw @s ["  ",{"text": "Prepend to Lore:  ", "color": "#5fe3e1"},{"text": "Hold named item in offhand", "color": "gray"}]

#execute if data storage name_formatting:item_storage second_item.tag.display.Name run data modify storage name_formatting:item_storage item.tag.display.Lore prepend from storage name_formatting:item_storage second_item.tag.display.Name
#execute if data storage name_formatting:item_storage second_item.tag.display.Name run data modify storage name_formatting:item_storage item.tag.display.Lore prepend value '""'

#execute if data storage name_formatting:item_storage second_item.tag.display.Name run tellraw @s ["  ",{"text": "Prepend to Lore:  ", "color": "#5fe3e1"}, {"nbt": "item.tag.display.Lore[]", "storage": "name_formatting:item_storage", "interpret": "true", "separator": " | ", "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 41" } }]

#execute if data storage name_formatting:item_storage temp_item.tag.display.Lore run data modify storage name_formatting:item_storage item.tag.display.Lore set from storage name_formatting:item_storage temp_item.tag.display.Lore
#execute unless data storage name_formatting:item_storage temp_item.tag.display.Lore run data remove storage name_formatting:item_storage item.tag.display.Lore

# font
#tellraw @s [{"text": "         <<< Font Menu >>>", "color": "#a1eb34", "bold": "true", "hoverEvent": { "action": "show_text", "value": "Click to access the font menu."}, "clickEvent": { "action": "run_command", "value": "/trigger FormatName set 2" }}]


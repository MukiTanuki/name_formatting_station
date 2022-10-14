dyes = {
    "minecraft:white_dye": "#f9fffe",
    "minecraft:pink_dye": "#f38baa",
    "minecraft:red_dye": "#b02e26",
    "minecraft:orange_dye": "#f9801d",
    "minecraft:yellow_dye": "#fed83d",
    "minecraft:lime_dye": "#80c71f",
    "minecraft:green_dye": "#5e7c16",
    "minecraft:cyan_dye": "#169c9c",
    "minecraft:light_blue_dye": "#3ab3da",
    "minecraft:blue_dye": "#3c44aa",
    "minecraft:purple_dye": "#8932b8",
    "minecraft:magenta_dye": "#c74ebd",
    "minecraft:brown_dye": "#835432",
    "minecraft:light_gray_dye": "#9d9d97",
    "minecraft:gray_dye": "#474f52",
    "minecraft:black_dye": "#1d1d21",
    "system_black": "black",
    "system_dark_gray": "dark_gray",
    "system_gray": "gray",
    "system_white": "white",
    "system_red": "red",
    "system_yellow": "yellow",
    "system_green": "green",
    "system_aqua": "aqua",
    "system_blue": "blue",
    "system_light_purple": "light_purple",
    "system_dark_red": "dark_red",
    "system_gold": "gold",
    "system_dark_green": "dark_green",
    "system_dark_aqua": "dark_aqua",
    "system_dark_blue": "dark_blue",    
    "system_dark_purple": "dark_purple"
}
dye_destination = "NameFormat.color"
dye_nbt = '{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"{replace}}"}'

fonts = {
    "minecraft:apple": "minecraft:default",
    "minecraft:": "minecraft:uniform",
    "minecraft:enchantment_table": "minecraft:alt",
    "minecraft:emerald": "minecraft:illageralt"
}
font_destination = "item.tag.NameFormatting.font"
font_nbt = '{"nbt":"item.tag.NameFormatting.obfuscated","storage":"name_formatting:item_storage","interpret":"true","font":"{replace}"}'

bool_formats = {
    "italic": ("","",'{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"{b}"}'),
    "underlined": ("","",'{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"{b}"}'),
    "bold": ("minecraft:ink_sac","",'{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"{b}"}'),
    "strikethrough": ("","",'{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"{b}"}'),
    "obfuscated": ("","",'{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"{b}"}')
}
bool_destination = 'item.tag.NameFormatting.{type}'
'''
append names: paper
prepend names: ?
Append to lore: nametag
prepend to lore: ?
delete last lore: ?
delete first lore: ?
reset name: ?
'''

iterator = 200
tellraw_list = []
for key in dyes:
    rename = key.replace("minecraft:", "").replace("_", " ")
    #print('execute if data storage name_formatting:item_data NameFormat{ color: "{replace}" } run data modify storage name_formatting:item_format NameFormat.color set value \'{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"{replace}"}\''.replace('{replace}', dyes[key]))
    #print("# " + rename)
    #print('data modify storage name_formatting:item_format NameFormat.color set value \'{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true","color":"{replace}"}\''.replace("{replace}", dyes[key]))
    #print('tellraw @s [{"text":"","clickEvent": { "action": "run_command", "value": "/trigger FormatName set ' + str(iterator) + '" }},{"text":"[ ","color": "gold"},{"text": "{replace}: ", "color": "gold"},{"nbt": "NameFormat.font", "storage": "name_formatting:item_format", "interpret": "true" },{"text":" ]","color": "gold"}]'.replace("{replace}", rename))
    #tellraw_list.append('{"text":"■","clickEvent": { "action": "run_command", "value": "/trigger FormatName set '+str(iterator)+'" }, "color": "'+dyes[key]+'"}')
    
    print('execute as @s[scores={FormatName=' + str(iterator) + '}] run data modify storage name_formatting:item_data NameFormat.color set value "' + dyes[key] + '"')
    iterator += 1
#print('tellraw @s [{"text":""},{"text":"[ ","color": "gold"},'+", ".join(tellraw_list)+',{"text":" ]","color": "gold"}]')
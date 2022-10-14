#
# Description:	trigger for FormatName
# Called by:	name_formatting:second
# Entity @s:	player
#

# store
#execute as @s[scores={FormatName=1..}] run function name_formatting:store

# menus
execute as @s[scores={FormatName=1}] run function name_formatting:menu/main
execute as @s[scores={FormatName=2}] run function name_formatting:menu/styles
# color menus
execute as @s[scores={FormatName=3}] run function name_formatting:menu/colors
execute as @s[scores={FormatName=4}] run function name_formatting:menu/colors_2
execute as @s[scores={FormatName=5}] run function name_formatting:menu/colors_3
execute as @s[scores={FormatName=6}] run function name_formatting:menu/colors_4
# font
execute as @s[scores={FormatName=10}] run function name_formatting:menu/fonts
# revert
execute as @s[scores={FormatName=11}] run function name_formatting:menu/revert
# merging
execute as @s[scores={FormatName=12}] run function name_formatting:menu/merging
# lore
execute as @s[scores={FormatName=13}] run function name_formatting:menu/lore
# check for xp

# revert
#execute as @s[scores={FormatName=9}] run data modify storage name_formatting:item_storage item.tag.display.Name set from storage name_formatting:item_storage item.tag.NameFormatting.OriginalName
#execute as @s[scores={FormatName=9}] run data modify storage name_formatting:item_storage item.tag.display.ModifiedName set from storage name_formatting:item_storage item.tag.NameFormatting.OriginalName
#execute as @s[scores={FormatName=9}] run data modify storage name_formatting:item_storage item.tag.NameFormatting merge from storage name_formatting:base_format NameFormatting

# color
#execute as @s[scores={FormatName=10},predicate=!name_formatting:offhand_dye] run tellraw @s {"text": "Requires dye in offhand!", "color": "red"}
#execute as @s[scores={FormatName=10},predicate=name_formatting:offhand_dye] run function name_formatting:format/color

#execute as @s[scores={FormatName=10},predicate=name_formatting:offhand_dye] unless score @s nfs_xp >= #xp_min FormatName run tellraw @s [{"text": "Must have at least ", "color": "red"},{"score": {"name": "#xp_min", "objective": "FormatName"}, "color": "red"}, {"text": " levels!", "color": "red"}]
#execute as @s[scores={FormatName=10},predicate=name_formatting:offhand_dye] run function name_formatting:menu/set_format
#execute as @s[scores={FormatName=10},predicate=name_formatting:offhand_dye] run xp add @s -1 levels

#execute as @s[scores={FormatName=10},predicate=name_formatting:offhand_dye] run item modify entity @s weapon.offhand name_formatting:decrement_stack
#execute as @s[scores={FormatName=10}] run function name_formatting:menu/main

# italic
#execute as @s[scores={FormatName=11}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.italic set value '{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"true"}'
#execute as @s[scores={FormatName=12}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.italic set value '{"nbt":"item.tag.NameFormatting.color","storage":"name_formatting:item_storage","interpret":"true","italic":"false"}'

# underlined
#execute as @s[scores={FormatName=13}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.underlined set value '{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"true"}'
#execute as @s[scores={FormatName=14}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.underlined set value '{"nbt":"item.tag.NameFormatting.italic","storage":"name_formatting:item_storage","interpret":"true","underlined":"false"}'

# bold
#execute as @s[scores={FormatName=15}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.bold set value '{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"true"}'
#execute as @s[scores={FormatName=16}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.bold set value '{"nbt":"item.tag.NameFormatting.underlined","storage":"name_formatting:item_storage","interpret":"true","bold":"false"}'

# strikethrough
#execute as @s[scores={FormatName=17}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.strikethrough set value '{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"true"}'
#execute as @s[scores={FormatName=18}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.strikethrough set value '{"nbt":"item.tag.NameFormatting.bold","storage":"name_formatting:item_storage","interpret":"true","strikethrough":"false"}'

# obfuscated
#execute as @s[scores={FormatName=19}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.obfuscated set value '{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"true"}'
#execute as @s[scores={FormatName=20}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.obfuscated set value '{"nbt":"item.tag.NameFormatting.strikethrough","storage":"name_formatting:item_storage","interpret":"true","obfuscated":"false"}'

# append
#execute as @s[scores={FormatName=30}] if data storage name_formatting:item_storage second_item.tag.display.Name run item modify entity @s weapon.mainhand name_formatting:append_names

# prepend
#execute as @s[scores={FormatName=31}] if data storage name_formatting:item_storage second_item.tag.display.Name run item modify entity @s weapon.mainhand name_formatting:prepend_names

# lore append
#execute as @s[scores={FormatName=40}] if data storage name_formatting:item_storage second_item.tag.display.Name run item modify entity @s weapon.mainhand name_formatting:append_lore

# lore prepend
#execute as @s[scores={FormatName=41}] if data storage name_formatting:item_storage second_item.tag.display.Name run item modify entity @s weapon.mainhand name_formatting:prepend_lore

# fonts
# minecraft:default
#execute as @s[scores={FormatName=98}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.font set value '{"nbt":"item.tag.NameFormatting.obfuscated","storage":"name_formatting:item_storage","interpret":"true","font":"minecraft:default"}'
# minecraft:uniform
#execute as @s[scores={FormatName=99}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.font set value '{"nbt":"item.tag.NameFormatting.obfuscated","storage":"name_formatting:item_storage","interpret":"true","font":"minecraft:uniform"}'
# minecraft:alt
#execute as @s[scores={FormatName=100}] run data modify storage name_formatting:item_storage item.tag.NameFormatting.font set value '{"nbt":"item.tag.NameFormatting.obfuscated","storage":"name_formatting:item_storage","interpret":"true","font":"minecraft:alt"}'
# custom fonts
#execute as @s[scores={FormatName=101..}] run function name_formatting:format/custom_fonts

# take level
#execute as @s[scores={FormatName=9..}] unless score @s nfs_xp >= #xp_min FormatName run tellraw @s [{"text": "Must have at least ", "color": "red"},{"score": {"name": "#xp_min", "objective": "FormatName"}, "color": "red"}, {"text": " levels!", "color": "red"}]

# reformats name
#execute as @s[scores={FormatName=9..}] unless entity @s[scores={FormatName=30..31}] run function name_formatting:menu/set_format
#execute as @s[scores={FormatName=9..}] run function name_formatting:menu/main

# 
# REDO THIS
#execute as @s[scores={FormatName=9..}] run xp add @s -1 levels


# reset scoreboard
#scoreboard players set @s FormatName 0
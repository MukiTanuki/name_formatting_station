#
# Description:	sets up success scoreboard
# Called by:	tag: minecraft:load
# Entity @s:	none
#
scoreboard objectives add nfs_dummy dummy
scoreboard objectives add nfs_xp level
# menu disable
execute unless score #disable_menu nfs_dummy matches 0..1 run scoreboard players set #disable_menu nfs_dummy 0
# book enabled
execute unless score #enable_book nfs_dummy matches 0..1 run scoreboard players set #enable_book nfs_dummy 0
# minimum level to format name from menu
execute unless score #min_level nfs_dummy matches 0.. run scoreboard players set #min_level nfs_dummy 1
# max name data for merging
execute unless score #max_name nfs_dummy matches 0.. run scoreboard players set #max_name nfs_dummy 500
# max lore size
execute unless score #max_lore nfs_dummy matches 0.. run scoreboard players set #max_lore nfs_dummy 8

# Sets up name formatting data into storage
data remove storage name_formatting:base_format NameFormat
data modify storage name_formatting:base_format {} merge value {NameFormat: {color:'{"nbt":"NameFormat.OriginalName","storage":"name_formatting:item_format","interpret":"true"}', italic:'{"nbt":"NameFormat.color","storage":"name_formatting:item_format","interpret":"true"}', underlined:'{"nbt":"NameFormat.italic","storage":"name_formatting:item_format","interpret":"true"}', bold:'{"nbt":"NameFormat.underlined","storage":"name_formatting:item_format","interpret":"true"}', strikethrough:'{"nbt":"NameFormat.bold","storage":"name_formatting:item_format","interpret":"true"}', obfuscated:'{"nbt":"NameFormat.strikethrough","storage":"name_formatting:item_format","interpret":"true"}', font:'{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true"}'} }

# Trigger for name formatting menu
scoreboard objectives add FormatName trigger
scoreboard players enable @a FormatName

# repeating 1 second function
function name_formatting:second
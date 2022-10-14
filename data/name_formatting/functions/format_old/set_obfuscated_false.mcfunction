#
# Description:	Sets a format for item in chest
# Called by:	name_formatting:check_obfuscated_false
# Entity @s:	none
#
summon minecraft:armor_stand ~ ~ ~ {Tags:["set_name"],Silent:1b,Small:1b,Invisible:1b,Marker:1b,Invulnerable:1b}
# nbt check to match name
function name_formatting:name_check
#
data modify block ~ ~ ~ Items[0].tag.NameFormatting.obfuscated set value "{\"nbt\":\"Items[0].tag.NameFormatting.strikethrough\",\"block\":\"~ ~ ~\",\"interpret\":\"true\",\"obfuscated\":\"false\"}"
execute as @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=set_name] run loot replace entity @s weapon.mainhand loot name_formatting:reformat_name
data modify block ~ ~ ~ Items[0].tag.display.Name set from entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=set_name] HandItems[0].tag.display.Name
data modify block ~ ~ ~ Items[0].tag.NameFormatting.ModifiedName set from block ~ ~ ~ Items[0].tag.display.Name
kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=set_name]
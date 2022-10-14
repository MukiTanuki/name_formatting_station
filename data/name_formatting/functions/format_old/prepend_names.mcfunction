#
# Description:	combine names together
# Called by:	name_formatting:check_prepend_names
# Entity @s:	none
#
summon minecraft:armor_stand ~ ~ ~ {Tags:["set_name"],Silent:1b,Small:1b,Invisible:1b,Marker:1b,Invulnerable:1b}
execute if data block ~ ~ ~ Items[0].tag.NameFormatting run data remove block ~ ~ ~ Items[0].tag.NameFormatting
execute as @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=set_name] run loot replace entity @s weapon.mainhand loot name_formatting:prepend_names
data modify block ~ ~ ~ Items[0].tag.display.Name set from entity @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=set_name] HandItems[0].tag.display.Name
kill @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=set_name]
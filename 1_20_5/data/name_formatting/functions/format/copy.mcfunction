#
# Description:	code for copying offhand to mainhand
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
# copies offhand name to mainhand name
#
execute as @s[scores={FormatName=510}] run item modify entity @s weapon.mainhand name_formatting:copy_offhand_name
#
# copies offhand lore to mainhand lore
#
execute as @s[scores={FormatName=610}] run data remove storage name_formatting:item_lore Lore
execute as @s[scores={FormatName=610}] run data modify storage name_formatting:item_lore Lore set from entity @s Inventory[{Slot:-106b}].components.minecraft:lore
execute as @s[scores={FormatName=610}] run function name_formatting:set_lore with storage name_formatting:item_lore {}
#
# store offhand
#
execute as @s[scores={FormatName=511}] run function name_formatting:store_offhand
#
# Checks for error in nbt data
#
execute as @s[scores={FormatName=511}] unless data storage name_formatting:item_data OffhandNameFormat run tellraw @s {"text": "Couldn't store name data from this item!", "color": "red"}
execute as @s[scores={FormatName=511}] unless data storage name_formatting:item_data OffhandNameFormat run return fail
#
# store mainhand
#
execute as @s[scores={FormatName=511}] run function name_formatting:store
#
# Checks for error in nbt data
#
execute as @s[scores={FormatName=511}] unless data storage name_formatting:item_data NameFormat run tellraw @s {"text": "Couldn't store name data from this item!", "color": "red"}
execute as @s[scores={FormatName=511}] unless data storage name_formatting:item_data NameFormat run return fail

execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.italic set from storage name_formatting:item_data OffhandNameFormat.italic
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.underlined set from storage name_formatting:item_data OffhandNameFormat.underlined
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.bold set from storage name_formatting:item_data OffhandNameFormat.bold
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.strikethrough set from storage name_formatting:item_data OffhandNameFormat.strikethrough
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.obfuscated set from storage name_formatting:item_data OffhandNameFormat.obfuscated
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.color set from storage name_formatting:item_data OffhandNameFormat.color
execute as @s[scores={FormatName=511}] run data modify storage name_formatting:item_data NameFormat.font set from storage name_formatting:item_data OffhandNameFormat.font


execute as @s[scores={FormatName=511}] run function name_formatting:set_name with storage name_formatting:item_data {}
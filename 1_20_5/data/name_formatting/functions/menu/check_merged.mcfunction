#
# Description:	checks if a name is merged
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
function name_formatting:store
#execute if data storage name_formatting:item_data NameFormat.merged run tellraw @s {"text":"[ Cannot format merged name! ]","color":"red"}
#execute if data storage name_formatting:item_data NameFormat.merged run scoreboard players set @s FormatName 99
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{NameFormat:{merged:1b}}] run tellraw @s {"text":"[ Cannot format merged name! ]","color":"red"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{NameFormat:{merged:1b}}] run scoreboard players set @s FormatName 99
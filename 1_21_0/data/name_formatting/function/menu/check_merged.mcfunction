#
# Description:	checks if a name is merged
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
function name_formatting:store
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{NameFormat:{merged:1b}}] run tellraw @s {"text":"[ Cannot format merged name! ]","color":"red"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{NameFormat:{merged:1b}}] run scoreboard players set @s FormatName 99
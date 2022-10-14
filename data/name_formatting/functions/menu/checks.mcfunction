#
# Description:	initial checks for nfs menu
# Called by:	name_formatting:second
# Entity @s:	player
#
# checks if menu is disabled
execute if score #disable_menu nfs_dummy matches 1 run tellraw @s ["",{"text":"[ Name Formatting Menu disabled.","color":"red"},{"text":" ]","color":"red"}]
execute if score #disable_menu nfs_dummy matches 1 run scoreboard players set @s FormatName 99
# checks for named item in mainhand
execute unless data entity @s[scores={FormatName=100..501}] SelectedItem.tag.display.Name run tellraw @s {"text":"[ Requires a named item in the mainhand! ]","color":"red"}
execute unless data entity @s[scores={FormatName=100..501}] SelectedItem.tag.display.Name run scoreboard players set @s FormatName 99
# checks for levels
execute if score @s[scores={FormatName=100..603}] nfs_xp < #min_level nfs_dummy run tellraw @s ["",{"text":"[ Requires at least ","color":"red"},{"score":{"name":"#min_level","objective":"nfs_dummy"},"color":"white"},{"text":" level(s)! ]","color":"red"}]
execute if score @s[scores={FormatName=100..603}] nfs_xp < #min_level nfs_dummy run scoreboard players set @s FormatName 99
# checks for named item in offhand
execute unless data entity @s[scores={FormatName=500..603}] Inventory[{Slot:-106b}].tag.display.Name run tellraw @s ["",{"text":"[ Requires a named item in the offhand!","color":"red"},{"text":" ]","color":"red"}]
execute unless data entity @s[scores={FormatName=500..603}] Inventory[{Slot:-106b}].tag.display.Name run scoreboard players set @s FormatName 99
# checks character max
execute if entity @s[scores={FormatName=500..501}] run scoreboard players set #size1 nfs_dummy 0
execute if entity @s[scores={FormatName=500..501}] run scoreboard players set #size2 nfs_dummy 0
execute if entity @s[scores={FormatName=500..501}] store result score #size1 nfs_dummy run data get entity @s SelectedItem.tag.display.Name
execute if entity @s[scores={FormatName=500..501}] store result score #size2 nfs_dummy run data get entity @s Inventory[{Slot:-106b}].tag.display.Name
execute if entity @s[scores={FormatName=500..501}] run scoreboard players operation #size1 nfs_dummy += #size2 nfs_dummy
execute if entity @s[scores={FormatName=500..501}] if score #size1 nfs_dummy > #max_name nfs_dummy run tellraw @s ["",{"text":"[ Name data too large to merge! Merged data: ","color":"red"},{"score":{"name":"#size1","objective":"nfs_dummy"},"color":"white"},{"text":" Max data: ","color":"red"},{"score":{"name":"#max_name","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=500..501}] if score #size1 nfs_dummy > #max_name nfs_dummy run scoreboard players set @s FormatName 99
# checks lore max
execute if entity @s[scores={FormatName=600..601}] run scoreboard players set #lore nfs_dummy 0
execute if entity @s[scores={FormatName=600..601}] store result score #lore nfs_dummy run data get entity @s SelectedItem.tag.display.Lore
execute if entity @s[scores={FormatName=600..601}] if score #lore nfs_dummy >= #max_lore nfs_dummy run tellraw @s ["",{"text":"[ Lore too large! Max lore allowed: ","color":"red"},{"score":{"name":"#max_lore","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=600..601}] if score #lore nfs_dummy >= #max_lore nfs_dummy run scoreboard players set @s FormatName 99
# menu
execute if data entity @s[scores={FormatName=1..20}] SelectedItem.tag.display.Name run function name_formatting:menu/format_name_trigger
# name formattings
execute if data entity @s[scores={FormatName=100..114}] SelectedItem.tag.display.Name run function name_formatting:format/styles
execute if data entity @s[scores={FormatName=199..231}] SelectedItem.tag.display.Name run function name_formatting:format/colors
execute if data entity @s[scores={FormatName=300..399}] SelectedItem.tag.display.Name run function name_formatting:format/fonts
execute if data entity @s[scores={FormatName=400}] SelectedItem.tag.display.Name run function name_formatting:format/revert
# merging
execute if data entity @s[scores={FormatName=500..501}] SelectedItem.tag.display.Name run function name_formatting:format/merging
# lore
execute if data entity @s[scores={FormatName=600..603}] SelectedItem.tag.display.Name run function name_formatting:format/lore
# book storing
# reset scoreboard
scoreboard players set @s FormatName 0
scoreboard players enable @s FormatName
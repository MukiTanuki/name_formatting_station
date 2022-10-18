#
# Description:	initial checks for nfs menu
# Called by:	name_formatting:second
# Entity @s:	player
#
# checks if menu is disabled
execute if entity @s[scores={FormatName=1..20}] if score #disable_menu nfs_dummy matches 1 run tellraw @s ["",{"text":"[ Name Formatting Menu disabled.","color":"red"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=1..20}] if score #disable_menu nfs_dummy matches 1 run scoreboard players set @s FormatName 99
# check if book is disabled
execute if entity @s[scores={FormatName=700..707}] if score #enable_book nfs_dummy matches 0 run tellraw @s {"text":"[ Book functions disabled! ]","color":"red"}
execute if entity @s[scores={FormatName=700..707}] if score #enable_book nfs_dummy matches 0 run scoreboard players set @s FormatName 99
# checks for book in mainhand and offhand
execute if entity @s[predicate=name_formatting:mainhand_book,predicate=name_formatting:offhand_book] run tellraw @s {"text":"[ Cannot format NFS books! ]","color":"red"}
execute if entity @s[predicate=name_formatting:mainhand_book,predicate=name_formatting:offhand_book] run scoreboard players set @s FormatName 99
# checks if name is merged (mainhand)
execute unless entity @s[predicate=name_formatting:mainhand_book] if data entity @s[scores={FormatName=100..499}] SelectedItem.tag.NameFormat.merged run tellraw @s {"text":"[ Cannot format merged name! ]","color":"red"}
execute unless entity @s[predicate=name_formatting:mainhand_book] if data entity @s[scores={FormatName=100..499}] SelectedItem.tag.NameFormat.merged run scoreboard players set @s FormatName 99
# checks if name is merged (offhand)
execute if entity @s[predicate=name_formatting:mainhand_book] if data entity @s[scores={FormatName=100..499}] Inventory[{Slot:-106b}].tag.NameFormat.merged run tellraw @s {"text":"[ Cannot format merged name! ]","color":"red"}
execute if entity @s[predicate=name_formatting:mainhand_book] if data entity @s[scores={FormatName=100..499}] Inventory[{Slot:-106b}].tag.NameFormat.merged run scoreboard players set @s FormatName 99
# disabled functions when book in mainhand
execute if entity @s[predicate=name_formatting:mainhand_book,scores={FormatName=500..699}] run tellraw @s {"text":"[ Can't do that with NFS books! ]","color":"red"}
execute if entity @s[predicate=name_formatting:mainhand_book,scores={FormatName=500..699}] run scoreboard players set @s FormatName 99
# checks for named item in mainhand
execute unless entity @s[predicate=name_formatting:mainhand_book] unless data entity @s[scores={FormatName=100..501}] SelectedItem.tag.display.Name run tellraw @s {"text":"[ Requires a named item in the mainhand! ]","color":"red"}
execute unless entity @s[predicate=name_formatting:mainhand_book] unless data entity @s[scores={FormatName=100..501}] SelectedItem.tag.display.Name run scoreboard players set @s FormatName 99
# checks for named item in offhand
execute unless entity @s[predicate=name_formatting:mainhand_book] unless data entity @s[scores={FormatName=500..601}] Inventory[{Slot:-106b}].tag.display.Name run tellraw @s {"text":"[ Requires a named item in the offhand! ]","color":"red"}
execute unless entity @s[predicate=name_formatting:mainhand_book] unless data entity @s[scores={FormatName=500..601}] Inventory[{Slot:-106b}].tag.display.Name run scoreboard players set @s FormatName 99
# checks for named item in offhand with book
execute if entity @s[predicate=name_formatting:mainhand_book] unless data entity @s[scores={FormatName=100..501}] Inventory[{Slot:-106b}].tag.display.Name run tellraw @s {"text":"[ Requires a named item in the offhand! ]","color":"red"}
execute if entity @s[predicate=name_formatting:mainhand_book] unless data entity @s[scores={FormatName=100..501}] Inventory[{Slot:-106b}].tag.display.Name run scoreboard players set @s FormatName 99
# checks for levels
execute unless score @s[scores={FormatName=100..799}] nfs_xp >= #min_level nfs_dummy run tellraw @s ["",{"text":"[ Requires at least ","color":"red"},{"score":{"name":"#min_level","objective":"nfs_dummy"},"color":"white"},{"text":" level(s)! ]","color":"red"}]
execute unless score @s[scores={FormatName=100..799}] nfs_xp >= #min_level nfs_dummy run scoreboard players set @s FormatName 99
# checks for named item in offhand
execute unless data entity @s[scores={FormatName=500..601}] Inventory[{Slot:-106b}].tag.display.Name run tellraw @s ["",{"text":"[ Requires a named item in the offhand!","color":"red"},{"text":" ]","color":"red"}]
execute unless data entity @s[scores={FormatName=500..601}] Inventory[{Slot:-106b}].tag.display.Name run scoreboard players set @s FormatName 99
# checks character max
execute if entity @s[scores={FormatName=500..501}] run scoreboard players set #size1 nfs_dummy 0
execute if entity @s[scores={FormatName=500..501}] run scoreboard players set #size2 nfs_dummy 0
execute if entity @s[scores={FormatName=500..501}] store result score #size1 nfs_dummy run data get entity @s SelectedItem.tag.display.Name
execute if entity @s[scores={FormatName=500..501}] store result score #size2 nfs_dummy run data get entity @s Inventory[{Slot:-106b}].tag.display.Name
execute if entity @s[scores={FormatName=500..501}] run scoreboard players operation #size1 nfs_dummy += #size2 nfs_dummy
execute if entity @s[scores={FormatName=500..501}] if score #size1 nfs_dummy > #max_name nfs_dummy run tellraw @s ["",{"text":"[ Name data too large to merge! Merged data: ","color":"red"},{"score":{"name":"#size1","objective":"nfs_dummy"},"color":"white"},{"text":" Max data: ","color":"red"},{"score":{"name":"#max_name","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=500..501}] if score #size1 nfs_dummy > #max_name nfs_dummy run scoreboard players set @s FormatName 99
# checks for lore+merging item
execute if entity @s[scores={FormatName=500..699}] unless data entity @s SelectedItem.id run tellraw @s {"text":"[ Requires item in mainhand! ]","color":"red"}
execute if entity @s[scores={FormatName=500..699}] unless data entity @s SelectedItem.id run scoreboard players set @s FormatName 99
# checks lore max
execute if entity @s[scores={FormatName=600..601}] run scoreboard players set #lore nfs_dummy 0
execute if entity @s[scores={FormatName=600..601}] store result score #lore nfs_dummy run data get entity @s SelectedItem.tag.display.Lore
execute if entity @s[scores={FormatName=600..601}] if score #lore nfs_dummy >= #max_lore nfs_dummy run tellraw @s ["",{"text":"[ Lore too large! Max lore allowed: ","color":"red"},{"score":{"name":"#max_lore","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=600..601}] if score #lore nfs_dummy >= #max_lore nfs_dummy run scoreboard players set @s FormatName 99
# lore removal check
execute unless data entity @s[scores={FormatName=602..603}] SelectedItem.tag.display.Lore[] run tellraw @s {"text":"[ Item has no lore! ]","color":"red"}
execute unless data entity @s[scores={FormatName=602..603}] SelectedItem.tag.display.Lore[] run scoreboard players set @s FormatName 99
# book check
execute if entity @s[scores={FormatName=700..707},predicate=!name_formatting:mainhand_book] run tellraw @s {"text":"[ Cannot use without book! ]","color":"red"}
execute if entity @s[scores={FormatName=700..707},predicate=!name_formatting:mainhand_book] run scoreboard players set @s FormatName 99
# name check with book
execute if entity @s[scores={FormatName=701..702}] unless data entity @s Inventory[{Slot:-106b}].tag.display.Name run tellraw @s {"text":"[ Requires named item in offhand! ]","color":"red"}
execute if entity @s[scores={FormatName=701..702}] unless data entity @s Inventory[{Slot:-106b}].tag.display.Name run scoreboard players set @s FormatName 99
# checks if there's an item in offhand
execute if entity @s[scores={FormatName=703..707}] unless data entity @s Inventory[{Slot:-106b}] run tellraw @s {"text":"[ Requires item in offhand! ]","color":"red"}
execute if entity @s[scores={FormatName=703..707}] unless data entity @s Inventory[{Slot:-106b}] run scoreboard players set @s FormatName 99
# checks character max
execute if entity @s[scores={FormatName=701..702}] run scoreboard players set #size1 nfs_dummy 0
execute if entity @s[scores={FormatName=701..702}] run scoreboard players set #size2 nfs_dummy 0
execute if entity @s[scores={FormatName=701..702}] store result score #size1 nfs_dummy run data get entity @s SelectedItem.tag.display.Lore[1]
execute if entity @s[scores={FormatName=701..702}] store result score #size2 nfs_dummy run data get entity @s Inventory[{Slot:-106b}].tag.display.Name
execute if entity @s[scores={FormatName=701..702}] run scoreboard players operation #size1 nfs_dummy += #size2 nfs_dummy
execute if entity @s[scores={FormatName=701..702}] if score #size1 nfs_dummy > #max_name nfs_dummy run tellraw @s ["",{"text":"[ Name data too large to merge! Merged data: ","color":"red"},{"score":{"name":"#size1","objective":"nfs_dummy"},"color":"white"},{"text":" Max data: ","color":"red"},{"score":{"name":"#max_name","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=701..702}] if score #size1 nfs_dummy > #max_name nfs_dummy run scoreboard players set @s FormatName 99
# checks lore max
execute if entity @s[scores={FormatName=704..705}] run scoreboard players set #lore nfs_dummy 0
execute if entity @s[scores={FormatName=704..705}] store result score #lore nfs_dummy run data get entity @s Inventory[{Slot:-106b}].tag.display.Lore
execute if entity @s[scores={FormatName=704..705}] if score #lore nfs_dummy >= #max_lore nfs_dummy run tellraw @s ["",{"text":"[ Lore too large! Max lore allowed: ","color":"red"},{"score":{"name":"#max_lore","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=704..705}] if score #lore nfs_dummy >= #max_lore nfs_dummy run scoreboard players set @s FormatName 99
# menu
execute if entity @s[scores={FormatName=1..20}] run function name_formatting:menu/format_name_trigger
# name formattings
execute if entity @s[scores={FormatName=100..114}] run function name_formatting:format/styles
execute if entity @s[scores={FormatName=199..231}] run function name_formatting:format/colors
execute if entity @s[scores={FormatName=300..399}] run function name_formatting:format/fonts
execute if entity @s[scores={FormatName=400}] run function name_formatting:format/revert
# merging
execute if entity @s[scores={FormatName=500..501}] run function name_formatting:format/merging
# lore
execute if entity @s[scores={FormatName=600..603}] run function name_formatting:format/lore
# book storage
execute if entity @s[scores={FormatName=700..707}] run function name_formatting:format/book_storage
# xp drain
execute if entity @s[scores={FormatName=100..707}] run function name_formatting:subtract_levels
# reset scoreboard
scoreboard players set @s FormatName 0
scoreboard players enable @s FormatName
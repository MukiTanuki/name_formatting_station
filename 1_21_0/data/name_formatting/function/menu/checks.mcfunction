#
# Description:	initial checks for nfs menu
# Called by:	name_formatting:second
# Entity @s:	player
#
# checks if menu is disabled
execute if entity @s[scores={FormatName=1..20}] if score #disable_menu nfs_dummy matches 1 run tellraw @s \
    [\
        {\
            "text":"[ Name Formatting Menu disabled. ]",\
            "color":"red"\
        }\
    ]
execute if entity @s[scores={FormatName=1..20}] if score #disable_menu nfs_dummy matches 1 run scoreboard players set @s FormatName 99

# checks if name is merged
execute if entity @s[scores={FormatName=100..499}] run function name_formatting:menu/check_merged
execute if entity @s[scores={FormatName=511}] run function name_formatting:menu/check_merged

# checks for named item in mainhand
execute unless items entity @s[scores={FormatName=100..501}] weapon.mainhand *[minecraft:custom_name] run tellraw @s {"text":"[ Requires a named item in the mainhand! ]","color":"red"}
execute unless items entity @s[scores={FormatName=100..501}] weapon.mainhand *[minecraft:custom_name] run scoreboard players set @s FormatName 99
execute unless items entity @s[scores={FormatName=511}] weapon.mainhand *[minecraft:custom_name] run tellraw @s {"text":"[ Requires a named item in the mainhand! ]","color":"red"}
execute unless items entity @s[scores={FormatName=511}] weapon.mainhand *[minecraft:custom_name] run scoreboard players set @s FormatName 99
# checks for named item in offhand
execute unless items entity @s[scores={FormatName=500..601}] weapon.offhand *[minecraft:custom_name] run tellraw @s {"text":"[ Requires a named item in the offhand! ]","color":"red"}
execute unless items entity @s[scores={FormatName=500..601}] weapon.offhand *[minecraft:custom_name] run scoreboard players set @s FormatName 99

# checks for levels
execute unless score @s[scores={FormatName=100..799}] nfs_xp >= #min_level nfs_dummy run tellraw @s ["",{"text":"[ Requires at least ","color":"red"},{"score":{"name":"#min_level","objective":"nfs_dummy"},"color":"white"},{"text":" level(s)! ]","color":"red"}]
execute unless score @s[scores={FormatName=100..799}] nfs_xp >= #min_level nfs_dummy run scoreboard players set @s FormatName 99

# checks for merged item in offhand
execute if items entity @s[scores={FormatName=511}] weapon.offhand *[minecraft:custom_data~{NameFormat:{merged:1b}}] run tellraw @s ["",{"text":"[ Requires a formatted item in the offhand!","color":"red"},{"text":" ]","color":"red"}]
execute if items entity @s[scores={FormatName=511}] weapon.offhand *[minecraft:custom_data~{NameFormat:{merged:1b}}] run scoreboard players set @s FormatName 99
# checks for formatted item in offhand
execute unless items entity @s[scores={FormatName=511}] weapon.offhand *[minecraft:custom_data~{NameFormat:{}}] run tellraw @s ["",{"text":"[ Requires a formatted item in the offhand!","color":"red"},{"text":" ]","color":"red"}]
execute unless items entity @s[scores={FormatName=511}] weapon.offhand *[minecraft:custom_data~{NameFormat:{}}] run scoreboard players set @s FormatName 99
# checks for lore item in offhand
execute unless items entity @s[scores={FormatName=610}] weapon.offhand *[minecraft:lore] run tellraw @s ["",{"text":"[ Requires an item with Lore in the offhand!","color":"red"},{"text":" ]","color":"red"}]
execute unless items entity @s[scores={FormatName=610}] weapon.offhand *[minecraft:lore] run scoreboard players set @s FormatName 99
#
# checks character max
#
execute if entity @s[scores={FormatName=500..501}] run scoreboard players set #size1 nfs_dummy 0
execute if entity @s[scores={FormatName=500..501}] run scoreboard players set #size2 nfs_dummy 0
execute if entity @s[scores={FormatName=500..501}] store result score #size1 nfs_dummy run data get entity @s SelectedItem.components.minecraft:custom_name
execute if entity @s[scores={FormatName=500..501}] store result score #size2 nfs_dummy run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_name
execute if entity @s[scores={FormatName=500..501}] run scoreboard players operation #size1 nfs_dummy += #size2 nfs_dummy
execute if entity @s[scores={FormatName=500..501}] if score #size1 nfs_dummy > #max_name nfs_dummy run tellraw @s ["",{"text":"[ Name data too large to merge! Merged data: ","color":"red"},{"score":{"name":"#size1","objective":"nfs_dummy"},"color":"white"},{"text":" Max data: ","color":"red"},{"score":{"name":"#max_name","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=500..501}] if score #size1 nfs_dummy > #max_name nfs_dummy run scoreboard players set @s FormatName 99
# checks if item is in mainhand
execute if entity @s[scores={FormatName=500..699}] unless items entity @s weapon.mainhand * run tellraw @s {"text":"[ Requires item in mainhand! ]","color":"red"}
execute if entity @s[scores={FormatName=500..699}] unless items entity @s weapon.mainhand * run scoreboard players set @s FormatName 99
# checks lore max
execute if entity @s[scores={FormatName=600..601}] run scoreboard players set #lore nfs_dummy 0
execute if entity @s[scores={FormatName=600..601}] store result score #lore nfs_dummy run data get entity @s SelectedItem.components.minecraft:lore
execute if entity @s[scores={FormatName=600..601}] if score #lore nfs_dummy >= #max_lore nfs_dummy run tellraw @s ["",{"text":"[ Lore too large! Max lore allowed: ","color":"red"},{"score":{"name":"#max_lore","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=600..601}] if score #lore nfs_dummy >= #max_lore nfs_dummy run scoreboard players set @s FormatName 99
# lore removal check
execute unless items entity @s[scores={FormatName=602..603}] weapon.mainhand *[minecraft:lore] run tellraw @s {"text":"[ Item has no lore! ]","color":"red"}
execute unless items entity @s[scores={FormatName=602..603}] weapon.mainhand *[minecraft:lore] run scoreboard players set @s FormatName 99

# checks if there's an item in offhand
execute if entity @s[scores={FormatName=703..707}] unless items entity @s weapon.offhand * run tellraw @s {"text":"[ Requires item in offhand! ]","color":"red"}
execute if entity @s[scores={FormatName=703..707}] unless items entity @s weapon.offhand * run scoreboard players set @s FormatName 99
# checks character max
execute if entity @s[scores={FormatName=701..702}] run scoreboard players set #size1 nfs_dummy 0
execute if entity @s[scores={FormatName=701..702}] run scoreboard players set #size2 nfs_dummy 0
execute if entity @s[scores={FormatName=701..702}] store result score #size1 nfs_dummy run data get entity @s SelectedItem.components.minecraft:lore[1]
execute if entity @s[scores={FormatName=701..702}] store result score #size2 nfs_dummy run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_name
execute if entity @s[scores={FormatName=701..702}] run scoreboard players operation #size1 nfs_dummy += #size2 nfs_dummy
execute if entity @s[scores={FormatName=701..702}] if score #size1 nfs_dummy > #max_name nfs_dummy run tellraw @s ["",{"text":"[ Name data too large to merge! Merged data: ","color":"red"},{"score":{"name":"#size1","objective":"nfs_dummy"},"color":"white"},{"text":" Max data: ","color":"red"},{"score":{"name":"#max_name","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=701..702}] if score #size1 nfs_dummy > #max_name nfs_dummy run scoreboard players set @s FormatName 99
#
# checks lore max
#
execute if entity @s[scores={FormatName=704..705}] run scoreboard players set #lore nfs_dummy 0
execute if entity @s[scores={FormatName=704..705}] store result score #lore nfs_dummy run data get entity @s Inventory[{Slot:-106b}].components.minecraft:lore
execute if entity @s[scores={FormatName=704..705}] if score #lore nfs_dummy >= #max_lore nfs_dummy run tellraw @s ["",{"text":"[ Lore too large! Max lore allowed: ","color":"red"},{"score":{"name":"#max_lore","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"red"}]
execute if entity @s[scores={FormatName=704..705}] if score #lore nfs_dummy >= #max_lore nfs_dummy run scoreboard players set @s FormatName 99
#
# menu
#
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
# copy
execute if entity @s[scores={FormatName=510..511}] run function name_formatting:format/copy
execute if entity @s[scores={FormatName=610}] run function name_formatting:format/copy

# xp drain
execute if entity @s[scores={FormatName=100..707}] run function name_formatting:subtract_levels
# reset scoreboard
scoreboard players set @s FormatName 0
scoreboard players enable @s FormatName
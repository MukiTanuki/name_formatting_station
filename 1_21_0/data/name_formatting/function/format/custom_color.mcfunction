#
# Description:	set color format
# Called by:	name_formatting:second
# Entity @s:	player
#
# pre-checks
#
# checks if menu is disabled
execute if score #disable_menu nfs_dummy matches 1 run tellraw @s \
    [\
        {\
            "text":"[ Name Formatting Menu disabled. ]",\
            "color":"red"\
        }\
    ]
execute if score #disable_menu nfs_dummy matches 1 run return fail

# checks if name is merged
function name_formatting:store
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{NameFormat:{merged:1b}}] run tellraw @s {"text":"[ Cannot format merged name! ]","color":"red"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{NameFormat:{merged:1b}}] run return fail

# checks if item is named
execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run tellraw @s {"text":"[ Requires a named item in the mainhand! ]","color":"red"}
execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run return fail

# checks for levels
execute unless score @s nfs_xp >= #min_level nfs_dummy run tellraw @s ["",{"text":"[ Requires at least ","color":"red"},{"score":{"name":"#min_level","objective":"nfs_dummy"},"color":"white"},{"text":" level(s)! ]","color":"red"}]
execute unless score @s nfs_xp >= #min_level nfs_dummy run return fail

# store
function name_formatting:store

#
# Checks for error in nbt data
#
execute unless data storage name_formatting:item_data NameFormat run tellraw @s {"text": "Couldn't store name data from this item!", "color": "red"}
execute unless data storage name_formatting:item_data NameFormat run return fail
#
# Checks if color value has overflow
#
execute if score @s CustomNameColor matches 16777216.. run scoreboard players set @s CustomNameColor 16777215
#
# reset data
#
data remove storage name_formatting:custom_color color1
data remove storage name_formatting:custom_color color2
data remove storage name_formatting:custom_color color3
data remove storage name_formatting:custom_color color4
data remove storage name_formatting:custom_color color5
data remove storage name_formatting:custom_color color6
#
# color parsing
#
scoreboard players operation #color nfs_dummy = @s CustomNameColor
#
# color1
#
scoreboard players operation #color_copy nfs_dummy = #color nfs_dummy
scoreboard players operation #color_copy nfs_dummy %= #16 nfs_dummy
function name_formatting:helpers/hex_matcher \
    {\
        scoreboard:'#color_copy nfs_dummy', \
        data_source:'storage name_formatting:custom_color color1'\
    }
scoreboard players operation #color nfs_dummy /= #16 nfs_dummy
#
# color2
#
scoreboard players operation #color_copy nfs_dummy = #color nfs_dummy
scoreboard players operation #color_copy nfs_dummy %= #16 nfs_dummy
function name_formatting:helpers/hex_matcher \
    {\
        scoreboard:'#color_copy nfs_dummy', \
        data_source:'storage name_formatting:custom_color color2'\
    }
scoreboard players operation #color nfs_dummy /= #16 nfs_dummy
#
# color3
#
scoreboard players operation #color_copy nfs_dummy = #color nfs_dummy
scoreboard players operation #color_copy nfs_dummy %= #16 nfs_dummy
function name_formatting:helpers/hex_matcher \
    {\
        scoreboard:'#color_copy nfs_dummy', \
        data_source:'storage name_formatting:custom_color color3'\
    }
scoreboard players operation #color nfs_dummy /= #16 nfs_dummy
#
# color4
#
scoreboard players operation #color_copy nfs_dummy = #color nfs_dummy
scoreboard players operation #color_copy nfs_dummy %= #16 nfs_dummy
function name_formatting:helpers/hex_matcher \
    {\
        scoreboard:'#color_copy nfs_dummy', \
        data_source:'storage name_formatting:custom_color color4'\
    }
scoreboard players operation #color nfs_dummy /= #16 nfs_dummy
#
# color5
#
scoreboard players operation #color_copy nfs_dummy = #color nfs_dummy
scoreboard players operation #color_copy nfs_dummy %= #16 nfs_dummy
function name_formatting:helpers/hex_matcher \
    {\
        scoreboard:'#color_copy nfs_dummy', \
        data_source:'storage name_formatting:custom_color color5'\
    }
scoreboard players operation #color nfs_dummy /= #16 nfs_dummy
#
# color6
#
scoreboard players operation #color_copy nfs_dummy = #color nfs_dummy
scoreboard players operation #color_copy nfs_dummy %= #16 nfs_dummy
function name_formatting:helpers/hex_matcher \
    {\
        scoreboard:'#color_copy nfs_dummy', \
        data_source:'storage name_formatting:custom_color color6'\
    }
scoreboard players operation #color nfs_dummy /= #16 nfs_dummy
#
# colors
#
function name_formatting:helpers/custom_color with storage name_formatting:custom_color {}

function name_formatting:set_name with storage name_formatting:item_data {}

# xp drain
function name_formatting:subtract_levels
# reset scoreboard
scoreboard players set @s CustomNameColor -1
scoreboard players enable @s CustomNameColor
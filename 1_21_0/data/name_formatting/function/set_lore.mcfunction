#
# Description:	sets lore to an item
# Called by:	name_formatting:format/lore
# Entity @s:	player
# Parameters:
#   Lore (list): json string in format of nbt
#
$item modify entity @s weapon.mainhand \
    {\
        function:set_components, \
        components: {\
            "minecraft:lore": $(Lore)\
        }\
    }
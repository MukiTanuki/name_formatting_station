#
# Description:	set font format
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
# store
function name_formatting:store
#
# Checks for error in nbt data
#
execute unless data storage name_formatting:item_data NameFormat run tellraw @s {"text": "Couldn't store name data from this item!", "color": "red"}
execute unless data storage name_formatting:item_data NameFormat run return fail
#
# Checks for error in nbt data
#
execute unless data storage name_formatting:item_data NameFormat run tellraw @s {"text": "Couldn't store name data from this item!", "color": "red"}
execute unless data storage name_formatting:item_data NameFormat run return fail
#
# fonts
#
execute as @s[scores={FormatName=300}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'font',\
    }
execute as @s[scores={FormatName=301}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"font":"minecraft:uniform"',\
    }
execute as @s[scores={FormatName=302}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"font":"minecraft:alt"',\
    }
execute as @s[scores={FormatName=303}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"font":"minecraft:illageralt"',\
    }
# formulate
#function name_formatting:formulate
# set formatting
#function name_formatting:format/set
function name_formatting:set_name with storage name_formatting:item_data {}
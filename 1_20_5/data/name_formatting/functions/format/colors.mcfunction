#
# Description:	set color format
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
# colors
execute as @s[scores={FormatName=199}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'color',\
    }
execute as @s[scores={FormatName=200}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#f9fffe"',\
    }
execute as @s[scores={FormatName=201}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#f38baa"',\
    }
execute as @s[scores={FormatName=202}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#b02e26"',\
    }
execute as @s[scores={FormatName=203}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#f9801d"',\
    }
execute as @s[scores={FormatName=204}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#fed83d"',\
    }
execute as @s[scores={FormatName=205}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#80c71f"',\
    }
execute as @s[scores={FormatName=206}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#5e7c16"',\
    }
execute as @s[scores={FormatName=207}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#169c9c"',\
    }
execute as @s[scores={FormatName=208}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#3ab3da"',\
    }
execute as @s[scores={FormatName=209}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#3c44aa"',\
    }
execute as @s[scores={FormatName=210}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#8932b8"',\
    }
execute as @s[scores={FormatName=211}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#c74ebd"',\
    }
execute as @s[scores={FormatName=212}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#835432"',\
    }
execute as @s[scores={FormatName=213}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#9d9d97"',\
    }
execute as @s[scores={FormatName=214}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#474f52"',\
    }
execute as @s[scores={FormatName=215}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#1d1d21"',\
    }
execute as @s[scores={FormatName=216}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"black"',\
    }
execute as @s[scores={FormatName=217}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"dark_gray"',\
    }
execute as @s[scores={FormatName=218}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"gray"',\
    }
execute as @s[scores={FormatName=219}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"white"',\
    }
execute as @s[scores={FormatName=220}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"red"',\
    }
execute as @s[scores={FormatName=221}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"yellow"',\
    }
execute as @s[scores={FormatName=222}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"green"',\
    }
execute as @s[scores={FormatName=223}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"aqua"',\
    }
execute as @s[scores={FormatName=224}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"blue"',\
    }
execute as @s[scores={FormatName=225}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"light_purple"',\
    }
execute as @s[scores={FormatName=226}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"dark_red"',\
    }
execute as @s[scores={FormatName=227}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"gold"',\
    }
execute as @s[scores={FormatName=228}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"dark_green"',\
    }
execute as @s[scores={FormatName=229}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"dark_aqua"',\
    }
execute as @s[scores={FormatName=230}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"dark_blue"',\
    }
execute as @s[scores={FormatName=231}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"dark_purple"',\
    }
# formulate
#function name_formatting:formulate
# set formatting
#function name_formatting:format/set

function name_formatting:set_name with storage name_formatting:item_data {}
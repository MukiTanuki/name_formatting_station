#
# Description:	code for formatting styles
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
# styles
# italic
execute as @s[scores={FormatName=100}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"italic":true',\
    }
execute as @s[scores={FormatName=101}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"italic":false',\
    }
execute as @s[scores={FormatName=102}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'italic',\
    }
# underlined
execute as @s[scores={FormatName=103}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"underlined":true',\
    }
execute as @s[scores={FormatName=104}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"underlined":false',\
    }
execute as @s[scores={FormatName=105}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'underlined',\
    }
# bold
execute as @s[scores={FormatName=106}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"bold":true',\
    }
execute as @s[scores={FormatName=107}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"bold":false',\
    }
execute as @s[scores={FormatName=108}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'bold',\
    }
# strikethrough
execute as @s[scores={FormatName=109}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"strikethrough":true',\
    }
execute as @s[scores={FormatName=110}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"strikethrough":false',\
    }
execute as @s[scores={FormatName=111}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'strikethrough',\
    }
# obfuscated
execute as @s[scores={FormatName=112}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"obfuscated":true',\
    }
execute as @s[scores={FormatName=113}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"obfuscated":false',\
    }
execute as @s[scores={FormatName=114}] run function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'obfuscated',\
    }
# set name

# formulate
#function name_formatting:formulate
# set formatting
#function name_formatting:format/set
function name_formatting:set_name with storage name_formatting:item_data {}
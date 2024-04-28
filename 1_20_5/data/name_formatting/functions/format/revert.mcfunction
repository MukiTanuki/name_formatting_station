#
# Description:	reverts name to original formatting
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
function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'italic',\
    }
function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'underlined',\
    }
function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'bold',\
    }
function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'strikethrough',\
    }
function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'obfuscated',\
    }
function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'color',\
    }
function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/remove_data',\
        extra_data: 'font',\
    }
# formulate
#function name_formatting:formulate
# set formatting
#function name_formatting:format/set
function name_formatting:set_name with storage name_formatting:item_data {}
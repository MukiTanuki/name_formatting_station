#
# Description:	helper for converting custom data into a color
# Called by:    name_formatting:format/custom_color
# Entity @s:	any
# Parameters:
#   color1-6 (str): numbered color codes
#   
$function name_formatting:traverse_name \
    {\
        data_source: 'storage name_formatting:item_data NameFormat', \
        function: 'name_formatting:format/merge_data',\
        extra_data: '"color":"#$(color6)$(color5)$(color4)$(color3)$(color2)$(color1)"',\
    }
$tellraw @s \
    [\
        {\
            "text": "Set color to: ",\
            "color": "gold"\
        },\
        {\
            "text": "#$(color6)$(color5)$(color4)$(color3)$(color2)$(color1)",\
            "color": "#$(color6)$(color5)$(color4)$(color3)$(color2)$(color1)"\
        }\
    ] 
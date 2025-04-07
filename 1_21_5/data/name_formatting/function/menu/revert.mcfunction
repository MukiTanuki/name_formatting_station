#
# Description:	menu for fonts
# Called by:	name_formatting:menu/main
# Entity @s:	player
#

# minecraft:default
#data modify storage name_formatting:item_format NameFormat.font set value '{"nbt":"NameFormat.obfuscated","storage":"name_formatting:item_format","interpret":"true","font":"minecraft:default"}'
tellraw @s \
    [\
        {\
            "text":"", \
            "click_event": { \
                "action": "run_command", \
                "command": "/trigger FormatName set 400" \
            }\
        },\
        {\
            "text":"[ ",\
            "color": "yellow"\
        },\
        {\
            "text": "revert name formatting?", \
            "color": "yellow"\
        },\
        {\
            "text":" ]",\
            "color": "yellow"\
        }\
    ]
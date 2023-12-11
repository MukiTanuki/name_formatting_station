#
# Description:	menu for fonts
# Called by:	name_formatting:menu/main
# Entity @s:	player
#

# store
function name_formatting:store
data remove storage name_formatting:item_data NameFormat.font
function name_formatting:formulate

tellraw @s [\
    {\
		"text":""\
	},\
    {\
        "text":"[default]", \
        "color":"yellow", \
        "clickEvent": { \
            "action": "run_command", \
            "value": "/trigger FormatName set 300" \
        }\
    },\
    {\
		"text":" "\
    },\
    {\
        "nbt": "NameFormat.font", \
        "storage": "name_formatting:item_format", \
        "interpret": true, \
        "font": "minecraft:default" \
    },\
    {\
        "text":" "\
    },\
    {\
        "text":"[uniform]", \
        "color":"yellow", \
        "clickEvent": { \
            "action": "run_command", \
            "value": "/trigger FormatName set 301" \
        }\
    },\
    {\
        "text":" "\
    },\
    {\
        "nbt": "NameFormat.font", \
        "storage": "name_formatting:item_format", \
        "interpret": true, \
        "font": "minecraft:uniform" \
    },\
    {\
        "text":" "\
    },\
    {\
        "text":"[alt]", \
        "color":"yellow", \
        "clickEvent": { \
            "action": "run_command", \
            "value": "/trigger FormatName set 302" \
        }\
    },\
    {\
        "text":" "\
    },\
    {\
        "nbt": "NameFormat.font", \
        "storage": "name_formatting:item_format", \
        "interpret": true, \
        "font": "minecraft:alt" \
    },\
    {\
        "text":" "\
    },\
    {\
        "text":"[illageralt]", \
        "color":"yellow", \
        "clickEvent": { \
            "action": "run_command", \
            "value": "/trigger FormatName set 303" \
        }\
    },\
    {\
        "text":" "\
    },\
    {\
        "nbt": "NameFormat.font", \
        "storage": "name_formatting:item_format", \
        "interpret": true, \
        "font": "minecraft:illageralt" \
    }\
]

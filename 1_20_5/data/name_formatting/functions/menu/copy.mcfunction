#
# Description:	menu for copying from offhand to mainhand
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
tellraw @s \
    [\
        {\
            "text": "Copy from Offhand ",\
            "color": "gold"\
        },\
        {\
            "text":"[Name]", \
            "color": "yellow", \
            "clickEvent": \
                { \
                    "action": "run_command", \
                    "value": "/trigger FormatName set 510" \
                }\
            },\
        {\
            "text":" or ",\
            "color": "gold"\
        },\
        {\
            "text":"[Format]", \
            "color": "yellow", \
            "clickEvent": { \
                "action": "run_command", \
                "value": "/trigger FormatName set 511" \
            }\
        }, \
        {\
            "text":" or ",\
            "color": "gold"\
        }, \
        {\
            "text":"[Lore]", \
            "color": "yellow", \
            "clickEvent": { \
                "action": "run_command", \
                "value": "/trigger FormatName set 610" \
            }\
        }\
    ]
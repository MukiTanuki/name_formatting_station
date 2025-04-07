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
            "click_event": \
                { \
                    "action": "run_command", \
                    "command": "/trigger FormatName set 510" \
                }\
            },\
        {\
            "text":" or ",\
            "color": "gold"\
        },\
        {\
            "text":"[Format]", \
            "color": "yellow", \
            "click_event": { \
                "action": "run_command", \
                "command": "/trigger FormatName set 511" \
            }\
        }, \
        {\
            "text":" or ",\
            "color": "gold"\
        }, \
        {\
            "text":"[Lore]", \
            "color": "yellow", \
            "click_event": { \
                "action": "run_command", \
                "command": "/trigger FormatName set 610" \
            }\
        }\
    ]
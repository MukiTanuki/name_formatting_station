#
# Description:	menu for colors
# Called by:	name_formatting:menu/format_name_trigger
# Entity @s:	player
#
tellraw @s [{"text":""},{"text":"[ ","color": "yellow"},{"text":"none","click_event": { "action": "run_command", "command": "/trigger FormatName set 199" }, "color": "yellow"}," ",{"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 200" }, "color": "#f9fffe"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 201" }, "color": "#f38baa"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 202" }, "color": "#b02e26"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 203" }, "color": "#f9801d"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 204" }, "color": "#fed83d"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 205" }, "color": "#80c71f"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 206" }, "color": "#5e7c16"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 207" }, "color": "#169c9c"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 208" }, "color": "#3ab3da"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 209" }, "color": "#3c44aa"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 210" }, "color": "#8932b8"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 211" }, "color": "#c74ebd"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 212" }, "color": "#835432"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 213" }, "color": "#9d9d97"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 214" }, "color": "#474f52"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 215" }, "color": "#1d1d21"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 216" }, "color": "black"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 217" }, "color": "dark_gray"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 218" }, "color": "gray"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 219" }, "color": "white"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 220" }, "color": "red"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 221" }, "color": "yellow"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 222" }, "color": "green"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 223" }, "color": "aqua"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 224" }, "color": "blue"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 225" }, "color": "light_purple"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 226" }, "color": "dark_red"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 227" }, "color": "gold"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 228" }, "color": "dark_green"}, {"text":"■","click_event": { "action": "run_command", "command": "/trigger FormatName set 229" }, "color": "dark_aqua"}, \
        {\
            "text":"■",\
            "click_event": { \
                "action": "run_command", \
                "command": "/trigger FormatName set 230" \
            }, \
            "color": "dark_blue"\
        }, \
        {\
            "text":"■",\
            "click_event": { \
                "action": "run_command", \
                "command": "/trigger FormatName set 231" \
            }, \
            "color": "dark_purple"\
        },\
        {\
            "text":" "\
        },\
        {\
            "text":"Custom",\
            "click_event": { \
                "action": "suggest_command", \
                "command": "/trigger CustomNameColor set " \
            }, \
            "color": "yellow"\
        },\
        {\
            "text":" ]",\
            "color": "yellow"\
        }\
    ]
#
# Description:	style formatting menu
# Called by:	name_formatting:menu/main
# Entity @s:	player
#

tellraw @s ["",{"text":"[          ","color":"gold"},{"text":"  ","bold":true,"color":"gold"},{"text":"italic:","italic":true,"color":"gold"},{"text":" ","color":"gold"},{"text":"true","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 100"}},{"text":" | ","color":"gold"},{"text":"false","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 101"}},{"text":" | ","color":"gold"},{"text":"none","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 102"}},{"text":" ]","color":"gold"}]
tellraw @s ["",{"text":"[     ","color":"gold"},{"text":"underlined:","underlined":true,"color":"gold"},{"text":" ","color":"gold"},{"text":"true","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 103"}},{"text":" | ","color":"gold"},{"text":"false","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 104"}},{"text":" | ","color":"gold"},{"text":"none","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 105"}},{"text":" ]","color":"gold"}]
tellraw @s ["",{"text":"[        ","color":"gold"},{"text":"   ","bold":true,"color":"gold"},{"text":"bold:","bold":true,"color":"gold"},{"text":" ","color":"gold"},{"text":"true","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 106"}},{"text":" | ","color":"gold"},{"text":"false","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 107"}},{"text":" | ","color":"gold"},{"text":"none","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 108"}},{"text":" ]","color":"gold"}]
tellraw @s ["",{"text":"[ ","color":"gold"},{"text":"strikethrough:","strikethrough":true,"color":"gold"},{"text":" ","color":"gold"},{"text":"true","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 109"}},{"text":" | ","color":"gold"},{"text":"false","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 110"}},{"text":" | ","color":"gold"},{"text":"none","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 111"}},{"text":" ]","color":"gold"}]
tellraw @s ["",{"text":"[    ","color":"gold"},{"text":"obfuscated:","obfuscated":true,"color":"gold"},{"text":" ","color":"gold"},{"text":"true","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 112"}},{"text":" | ","color":"gold"},{"text":"false","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 113"}},{"text":" | ","color":"gold"},{"text":"none","color":"gold","clickEvent":{"action":"run_command","value":"/trigger FormatName set 114"}},{"text":" ]","color":"gold"}]

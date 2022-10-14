#
# Description:	reverts name to original formatting
# Called by:	name_formatting:menu/checks
# Entity @s:	player
#
# store
function name_formatting:store
#
data remove storage name_formatting:item_data NameFormat.italic
data remove storage name_formatting:item_data NameFormat.underlined
data remove storage name_formatting:item_data NameFormat.bold
data remove storage name_formatting:item_data NameFormat.strikethrough
data remove storage name_formatting:item_data NameFormat.obfuscated
data remove storage name_formatting:item_data NameFormat.color
data remove storage name_formatting:item_data NameFormat.font
# formulate
function name_formatting:formulate
# set formatting
function name_formatting:format/set
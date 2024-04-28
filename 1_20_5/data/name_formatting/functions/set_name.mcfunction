#
# Description:	Iterates over a list and calls a function per element
# Called by:	name_formatting:format/*
# Entity @s:	player
# Parameters:
#   NameFormat (str): json string in format of nbt
#
$item modify entity @s weapon.mainhand {function:set_name, name:$(NameFormat)}
item modify entity @s weapon.mainhand name_formatting:set_modified_name
#
# Description:	matches scoreboard to a hex
# Called by:    name_formatting:format/custom_color
# Entity @s:	any
# Parameters:
#   scoreboard (str): scoreboard to check
#   data_source (str): String format of a data souce to a list element.  (ex; "entity @s Pos")
#
$execute if score $(scoreboard) matches 0 run data modify $(data_source) set value "0"
$execute if score $(scoreboard) matches 1 run data modify $(data_source) set value "1"
$execute if score $(scoreboard) matches 2 run data modify $(data_source) set value "2"
$execute if score $(scoreboard) matches 3 run data modify $(data_source) set value "3"
$execute if score $(scoreboard) matches 4 run data modify $(data_source) set value "4"
$execute if score $(scoreboard) matches 5 run data modify $(data_source) set value "5"
$execute if score $(scoreboard) matches 6 run data modify $(data_source) set value "6"
$execute if score $(scoreboard) matches 7 run data modify $(data_source) set value "7"
$execute if score $(scoreboard) matches 8 run data modify $(data_source) set value "8"
$execute if score $(scoreboard) matches 9 run data modify $(data_source) set value "9"
$execute if score $(scoreboard) matches 10 run data modify $(data_source) set value "A"
$execute if score $(scoreboard) matches 11 run data modify $(data_source) set value "B"
$execute if score $(scoreboard) matches 12 run data modify $(data_source) set value "C"
$execute if score $(scoreboard) matches 13 run data modify $(data_source) set value "D"
$execute if score $(scoreboard) matches 14 run data modify $(data_source) set value "E"
$execute if score $(scoreboard) matches 15 run data modify $(data_source) set value "F"
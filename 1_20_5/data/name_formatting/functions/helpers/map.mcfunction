#
# Description:	Iterates over a list and calls a function per element
# Called by:	any
# Entity @s:	any
# Parameters:
#   data_source (str): String format of a data souce to a list element.  (ex; "entity @s Pos")
#   function (str): A function to map to each element of the 
#   current_pos (int): The current possition of the iterator.
#   extra_data (str): extra data for function
#
# Checks if at the end of list and returns if true
#
$execute store result score #length nfs_dummy run data get $(data_source)
$scoreboard players set #current_pos nfs_dummy $(current_pos)
execute if score #current_pos nfs_dummy >= #length nfs_dummy run return -2
#$say $(data_source) $(function) $(current_pos) $(extra_data)
#
# applies function
#
$function name_formatting:traverse_name \
    { \
        function: '$(function)',\
        data_source: '$(data_source)[$(current_pos)]', \
        extra_data: '$(extra_data)'\
    }
#
# set up nbt to next iter and run
#
$data merge storage name_formatting:map \
    {\
        data_source: "$(data_source)",\
        function: "$(function)",\
        extra_data: '$(extra_data)'\
    }
$scoreboard players set #current_pos nfs_dummy $(current_pos)
scoreboard players add #current_pos nfs_dummy 1
execute store result storage name_formatting:map current_pos int 1 run scoreboard players get #current_pos nfs_dummy
# 
function name_formatting:helpers/map with storage name_formatting:map {}
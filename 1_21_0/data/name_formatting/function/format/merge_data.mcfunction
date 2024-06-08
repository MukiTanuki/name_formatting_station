#
# Description:	merges data into a data source
# Called by:	any
# Entity @s:	any
# Parameters:
#   data_source (str): String format of a data souce to a list element.  (ex; "entity @s Pos")
#   extra_data (str): 
#
$data modify $(data_source) merge value { $(extra_data) }
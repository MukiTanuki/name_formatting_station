#
# Description:	converts a json object to an nbt object
# Called by:	name_formatting:format/*
# Entity @s:	any
# Parameters:
#   data_source (str): source of a nbt object from a json string.
#   function (str): function to modify data with
#   extra_data (str): extra data for function
#
# traverse if list
#
$execute if data $(data_source)[] run function name_formatting:helpers/map \
    { \
        data_source: '$(data_source)', \
        function: '$(function)',\
        extra_data: '$(extra_data)',\
        current_pos: 0\
    }
#
# applies function if nbt object
#
$execute unless data $(data_source)[] run function $(function) \
    { \
        data_source: '$(data_source)', \
        extra_data: '$(extra_data)'\
    }
#
# traverse extras
#
$execute if data $(data_source).extra run function name_formatting:helpers/map \
    { \
        data_source: '$(data_source).extra', \
        function: '$(function)',\
        extra_data: '$(extra_data)',\
        current_pos: 0\
    }

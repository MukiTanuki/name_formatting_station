#
# Description:	Function that repeats every second
# Called by:	init
# Entity @s:	none
#
# reschedules function
schedule function name_formatting:second 1s replace

# trigger
execute as @a[scores={FormatName=1..}] run function name_formatting:menu/checks

# re-enables trigger
scoreboard players enable @a FormatName



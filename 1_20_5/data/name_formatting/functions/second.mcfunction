#
# Description:	Function that repeats every second
# Called by:	#minecraft:load
# Entity @s:	none
#
# reschedules function
schedule function name_formatting:second 1s replace

# format trigger
execute as @a[scores={FormatName=1..}] run function name_formatting:menu/checks

# custom name color trigger
execute as @a[scores={CustomNameColor=0..}] run function name_formatting:format/custom_color

# re-enables trigger
scoreboard players enable @a FormatName
scoreboard players set @a[scores={CustomNameColor=0..}] CustomNameColor -1
scoreboard players enable @a CustomNameColor

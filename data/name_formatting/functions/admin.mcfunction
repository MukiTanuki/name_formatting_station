#
# Description:	admin menu
# Called by:	
# Entity @s:	
#
# header
tellraw @s [{"text":"","bold":"true","clickEvent":{"action":"open_url","value":"https://twitter.com/MukiTanuki"}},{"text":"[ ","color":"gold"},{"text":"Admin Menu","color":"gold","underlined":"true"},{"text":" Datapack Created by: ","color":"gold"},{"text":"MukiTanuki","color":"white"},{"text":" ]","color":"gold"}]
# menu disabling
execute if score #disable_menu nfs_dummy matches 0 run tellraw @s [{"text":"","clickEvent":{"action":"run_command","value":"/scoreboard players set #disable_menu nfs_dummy 1"}},{"text":"[ Disable menu: ","color":"gold"},{"text":"false","color":"white"},{"text":" ]","color":"gold"}]
execute if score #disable_menu nfs_dummy matches 1 run tellraw @s [{"text":"","clickEvent":{"action":"run_command","value":"/scoreboard players set #disable_menu nfs_dummy 0"}},{"text":"[ Disable menu: ","color":"gold"},{"text":"true","color":"white"},{"text":" ]","color":"gold"}]
# book enabling
execute if score #enable_book nfs_dummy matches 0 run tellraw @s [{"text":"","clickEvent":{"action":"run_command","value":"/scoreboard players set #enable_book nfs_dummy 1"}},{"text":"[ Enable book: ","color":"gold"},{"text":"false","color":"white"},{"text":" ]","color":"gold"}]
execute if score #enable_book nfs_dummy matches 1 run tellraw @s [{"text":"","clickEvent":{"action":"run_command","value":"/scoreboard players set #enable_book nfs_dummy 0"}},{"text":"[ Enable book: ","color":"gold"},{"text":"true","color":"white"},{"text":" ]","color":"gold"}]
# scores
tellraw @s [{"text":"","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #min_level nfs_dummy 1"}},{"text":"[ Min levels required to format: ","color":"gold"},{"score":{"name":"#min_level","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"gold"}]
tellraw @s [{"text":"","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_name nfs_dummy 500"}},{"text":"[ Max name data allowed: ","color":"gold"},{"score":{"name":"#max_name","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"gold"}]
tellraw @s [{"text":"","clickEvent":{"action":"suggest_command","value":"/scoreboard players set #max_lore nfs_dummy 8"}},{"text":"[ Max Lore allowed: ","color":"gold"},{"score":{"name":"#max_lore","objective":"nfs_dummy"},"color":"white"},{"text":" ]","color":"gold"}]
schedule function adminnotice:check 60s
execute as @a[scores={diamond_mined=11..}] run tellraw @a[team=admin] ["",{"selector":"@s","color":"red"},{"text":" has mined ","color":"red"},{"score":{"name":"@s","objective":"diamond_mined"},"color":"red"},{"text":" diamond_ore in the past 10 minutes!","color":"red"}]
scoreboard players remove @a[scores={diamond_mined=1..}] diamond_mined 1

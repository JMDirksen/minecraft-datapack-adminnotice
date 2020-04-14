schedule function adminnotice:check 60s
execute as @a[scores={diamonds_mined=11..}] run tellraw @a[team=Admins] ["",{"selector":"@s","color":"red"},{"text":" has mined ","color":"red"},{"score":{"name":"@s","objective":"diamonds_mined"},"color":"red"},{"text":" diamond_ore in the past 10 minutes!","color":"red"}]
scoreboard players remove @a[scores={diamonds_mined=1..}] diamonds_mined 1

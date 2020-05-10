schedule function adminnotice:orecheck 60s

execute as @a[scores={diamonds_mined=10..}] run tellraw @a[tag=Admin] ["",{"selector":"@s","color":"red"},{"text":" has mined ","color":"red"},{"score":{"name":"@s","objective":"diamonds_mined"},"color":"red"},{"text":" diamond_ore!","color":"red"}]
scoreboard players remove @a[scores={diamonds_mined=1..}] diamonds_mined 1

execute as @a[scores={emeralds_mined=5..}] run tellraw @a[tag=Admin] ["",{"selector":"@s","color":"red"},{"text":" has mined ","color":"red"},{"score":{"name":"@s","objective":"emeralds_mined"},"color":"red"},{"text":" emerald_ore!","color":"red"}]
scoreboard players remove @a[scores={emeralds_mined=1..}] emeralds_mined 1

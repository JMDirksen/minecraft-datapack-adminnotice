schedule function adminnotice:flycheck 10
scoreboard players add @a flycheck 0
# Non admin players not using Elytra with only blocks of air under feet
execute as @a[scores={flycheck=..5},nbt=!{FallFlying:1b},nbt=!{ActiveEffects:[{Id:25b}]}] at @s if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~ air if block ~-1 ~-1 ~1 air if block ~ ~-1 ~-1 air if block ~ ~-1 ~ air if block ~ ~-1 ~1 air if block ~1 ~-1 ~-1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~1 air run scoreboard players add @s flycheck 2
scoreboard players remove @a[scores={flycheck=1..}] flycheck 1
execute as @a[scores={flycheck=6..},tag=!flynoticed] run tellraw @a[team=Admins] ["",{"selector":"@s","color":"red"},{"text":" is flying!","color":"red"}]
tag @a[scores={flycheck=6..}] add flynoticed
tag @a[scores={flycheck=0}] remove flynoticed

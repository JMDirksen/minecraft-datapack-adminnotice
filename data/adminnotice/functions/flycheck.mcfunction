schedule function adminnotice:flycheck 10
scoreboard players add @a flycheck 0
# FallFlying = Elytra, Effect 25 = Levitation
execute as @a[scores={flycheck=..6},nbt=!{FallFlying:1b},nbt=!{ActiveEffects:[{Id:25b}]}] at @s if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~ air if block ~-1 ~-1 ~1 air if block ~ ~-1 ~-1 air if block ~ ~-1 ~ air if block ~ ~-1 ~1 air if block ~1 ~-1 ~-1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~1 air run scoreboard players add @s flycheck 2
scoreboard players remove @a[scores={flycheck=1..}] flycheck 1
execute as @a[tag=!flynoticed,scores={flycheck=7..}] run tellraw @a[team=Admins] ["",{"selector":"@s","color":"red"},{"text":" is flying!","color":"red"}]
tag @a[tag=!flynoticed,scores={flycheck=7..}] add flynoticed
tag @a[tag=flynoticed,scores={flycheck=0}] remove flynoticed

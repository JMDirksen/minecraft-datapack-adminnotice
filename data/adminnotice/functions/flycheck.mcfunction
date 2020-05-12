schedule function adminnotice:flycheck 10
scoreboard players add @a flycheck 0
# NBTs: FallFlying=Elytra, Effects: 25=Levitation, 8=JumpBoost, 28=SlowFalling
execute as @a[scores={flycheck=..6},nbt=!{FallFlying:1b},nbt=!{ActiveEffects:[{Id:25b}]},nbt=!{ActiveEffects:[{Id:8b}]},nbt=!{ActiveEffects:[{Id:28b}]}] at @s if block ~-1 ~-.5 ~-1 air if block ~-1 ~-.5 ~ air if block ~-1 ~-.5 ~1 air if block ~ ~-.5 ~-1 air if block ~ ~-.5 ~ air if block ~ ~-.5 ~1 air if block ~1 ~-.5 ~-1 air if block ~1 ~-.5 ~ air if block ~1 ~-.5 ~1 air run scoreboard players add @s flycheck 2
scoreboard players remove @a[scores={flycheck=1..}] flycheck 1
execute as @a[tag=!flynoticed,scores={flycheck=7..}] run tellraw @a[tag=Admin] ["",{"selector":"@s","color":"red"},{"text":" is flying!","color":"red"}]
tag @a[tag=!flynoticed,scores={flycheck=7..}] add flynoticed
tag @a[tag=flynoticed,scores={flycheck=0}] remove flynoticed

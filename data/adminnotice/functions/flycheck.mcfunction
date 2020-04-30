schedule function adminnotice:flycheck 1s
# Players not using Elytra with only blocks of air under feet
execute as @a[nbt=!{FallFlying:1b}] at @s if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~ air if block ~-1 ~-1 ~1 air if block ~ ~-1 ~-1 air if block ~ ~-1 ~ air if block ~ ~-1 ~1 air if block ~1 ~-1 ~-1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~1 air run tellraw @a[team=Admins] ["",{"selector":"@p","color":"red"},{"text":" is flying!","color":"red"}]

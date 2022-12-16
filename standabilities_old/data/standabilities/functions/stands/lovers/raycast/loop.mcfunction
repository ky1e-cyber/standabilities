scoreboard players remove @s sa_distance 1

execute unless block ~ ~ ~ #standabilities:main/voids run scoreboard players set @s sa_distance 0
particle minecraft:mycelium ~ ~ ~ 0 0 0 1 1


execute as @s[scores = {sa_distance = 1..}] if entity @e[tag = !sa_par_caster, distance=..1.5, type=!#standabilities:main/nonliving] as @e[tag = !sa_par_caster, distance=..1.5, type=!#standabilities:main/nonliving, sort=nearest, limit=1] run function standabilities:stands/lovers/raycast/end

execute as @s[scores = {sa_distance = 1..}] rotated as @s positioned ^ ^ ^0.5 run function standabilities:stands/lovers/raycast/loop
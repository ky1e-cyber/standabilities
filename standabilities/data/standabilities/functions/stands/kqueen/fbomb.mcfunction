tag @s add sa_kq_plant
scoreboard players set @s sa_death_kq 0

execute as @e[type=!#standabilities:main/nonliving, tag = !sa_kq_plant, distance=..1, sort=nearest, limit=1] run tag @s add sa_kqbomb
execute as @e[type=!#standabilities:main/nonliving, tag = !sa_kq_plant, distance=..1, sort=nearest, limit=1] at @s run particle minecraft:soul ~ ~0.5 ~ 0.5 1 0.5 0 5 force
execute as @e[type=minecraft:item, distance=..1, sort=nearest, limit=1] run tag @s add sa_kqbomb
execute as @e[type=minecraft:item, distance=..1, sort=nearest, limit=1] run particle minecraft:soul ~ ~0.5 ~ 0.5 1 0.5 0 5 force


execute if entity @e[tag = sa_kqbomb] run tag @s add sa_kq_active
execute as @e[type=minecraft:item, tag = sa_kqbomb] run data merge entity @s {Item:{tag:{sa_kqbomb:1b}}}

tag @s remove sa_kq_plant
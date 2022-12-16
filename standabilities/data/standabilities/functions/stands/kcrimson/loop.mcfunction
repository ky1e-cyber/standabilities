scoreboard players remove @s sa_distance 1
execute if entity @e[type = !#standabilities:main/nonliving, tag = !sa_kccast, distance=..1.5] at @e[type = !#standabilities:main/nonliving, tag = !sa_kccast, distance=..1.5, sort=nearest, limit=1] positioned ~ ~1.5 ~ rotated ~ 0 positioned ^ ^ ^-1 if block ~ ~ ~ #standabilities:main/voids unless block ~ ~-1.7 ~ #standabilities:main/voids run function standabilities:stands/kcrimson/loop_end

execute unless score @s sa_distance matches ..0 positioned ^ ^ ^0.3 if block ~ ~ ~ #standabilities:main/voids run function standabilities:stands/kcrimson/loop
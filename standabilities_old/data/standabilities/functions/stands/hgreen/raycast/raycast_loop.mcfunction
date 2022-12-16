scoreboard players add @s sa_distance 1

particle minecraft:happy_villager ~ ~ ~ 0 0 0 1 1 force
particle minecraft:crit ~ ~ ~ 0 0 0 5 1 normal


execute unless block ~ ~ ~ #standabilities:main/voids as @s[scores={sa_distance=..140}] positioned ^ ^ ^-0.5 run function standabilities:stands/hgreen/raycast/raycast_end

execute if entity @e[distance=..2, tag=!raycaster_hg] run function standabilities:stands/hgreen/raycast/raycast_end


execute as @s[scores={sa_distance=140}] positioned ^ ^ ^-0.5 run function standabilities:stands/hgreen/raycast/raycast_end

execute if block ~ ~ ~ #standabilities:main/voids as @s[scores={sa_distance=..140}] positioned ^ ^ ^0.5 run function standabilities:stands/hgreen/raycast/raycast_loop
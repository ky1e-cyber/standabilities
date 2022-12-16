scoreboard players add @s sa_distance 1

particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ #standabilities:main/voids as @s[scores={sa_distance=..100}] positioned ^ ^ ^-0.5 run function standabilities:stands/justice/raycast/raycast_end

execute if entity @e[distance=..2,tag=!raycaster, tag = sa_fogged] run tag @e[distance=..1,tag=!raycaster] add sa_puppeted
execute if entity @e[distance=..2,tag=!raycaster, tag = sa_fogged] run function standabilities:stands/justice/raycast/raycast_end


execute as @s[scores={sa_distance=100}] positioned ^ ^ ^-0.5 run function standabilities:stands/justice/raycast/raycast_end

execute if block ~ ~ ~ #standabilities:main/voids as @s[scores={sa_distance=..100}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!raycaster] positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function standabilities:stands/justice/raycast/raycast_loop
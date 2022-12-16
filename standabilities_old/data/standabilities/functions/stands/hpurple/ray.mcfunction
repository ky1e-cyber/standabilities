scoreboard players add @s sa_distance 1
particle minecraft:dust 1 0.2 0.7 1 ~ ~ ~ 0 0 0 1 10 force
particle minecraft:electric_spark ~ ~ ~ 0 0 0 1 5 normal

execute if entity @e[distance=..1.5, tag = !sa_hcaster] run function standabilities:stands/hpurple/ray_end
execute if score @s sa_distance matches ..20 if block ^ ^ ^0.5 #standabilities:main/voids unless entity @e[distance=..1.5, tag = !sa_hcaster] positioned ^ ^ ^0.5 run function standabilities:stands/hpurple/ray
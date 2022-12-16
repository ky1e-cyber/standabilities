scoreboard players add @s sa_distance 1
particle minecraft:dust 1 0.2 0.7 1 ~ ~ ~ 0 0 0 1 10 force

execute if entity @e[distance=..0.5, tag = !sa_hcaster] run function standabilities:stands/hpurple/hray_end
execute if score @s sa_distance matches ..50 unless block ^ ^ ^0.2 #standabilities:main/voids run function standabilities:stands/hpurple/hray_end
execute if score @s sa_distance matches ..50 if block ^ ^ ^0.2 #standabilities:main/voids unless entity @e[distance=..1.5, tag = !sa_hcaster] positioned ^ ^ ^0.2 run function standabilities:stands/hpurple/hook_ray
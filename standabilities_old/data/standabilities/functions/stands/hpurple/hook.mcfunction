scoreboard players set @s sa_distance 0
tag @s add sa_hcaster
execute at @s run playsound minecraft:block.cave_vines.hit player @a[distance=..4] ~ ~ ~ 1.5 1.3
execute positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 run function standabilities:stands/hpurple/hook_ray

tag @s remove sa_hcaster
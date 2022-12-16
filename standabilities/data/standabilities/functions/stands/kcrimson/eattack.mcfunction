tag @s add sa_kccast
scoreboard players set @s sa_distance 20
execute at @s positioned ~ ~1.62 ~ positioned ^ ^ ^0.3 run function standabilities:stands/kcrimson/loop
tag @s remove sa_kccast
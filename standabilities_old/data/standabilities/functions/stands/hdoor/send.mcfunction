tag @s add sa_hdsend
scoreboard players set @s sa_distance 50
execute positioned ~ ~1.12 ~ positioned ^ ^ ^0.5 run function standabilities:stands/hdoor/loop
##tag @s remove sa_hdsend